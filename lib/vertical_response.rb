# VerticalResponse
require 'rubygems'
require 'VRAPIDriver.rb'


class VerticalResponse
  
  
    # Initializes the model using some of the options set in environment.rb
    # These include the filenames to the key and cert to access the VR API
    # The files are assumed to exist in RAILS_ROOT/config/certs.
    def initialize
      
      # Create a new VRAPIDriver 
      @vr = VRAPIDriver::VRAPIPortType.new
      
      # Load in the ssl options unless otherwise
      load_vr_options unless VR_CERT.blank? and VR_KEY.blank?
      
      # Login using their WSDL method
      @session_id = @vr.login({'username' => VR_USERNAME,
                               'password' => VR_PASSWORD,
                               'session_duration_minutes' => VR_SESSION_TIME})
     rescue Exception => error
       raise  error
    end
  
    #
    # ADD MEMBER
    # ==========
    # Takes in a couple member attributes, and the list id:
    # :email        = The email address of the member (string)
    # :first_name   = The first name of the member (string)
    # :last_name    = The last name of the member (string)
    # :list_id      = The id of the list to add the member too.
    #
    def add_member(options = {})
      return false if options.empty?
      member_data = create_member_data(options)
      @member_record  = @vr.addListMember({'session_id'  => @session_id,
                                           'list_member' =>{ 'list_id'     => options[:list_id],
                                                             'member_data' => member_data}})
      rescue Exception => error
       raise  error
    end
  
    #
    # SEND NEWSLETTER
    # ===============
    # Takes in an array of options
    # :list_id          = The id of the VR list you want to send the newsletter too.
    # :campaign_name    = An arbritray name for the newsletter campaign
    # :from             = The from field of the email. This is required.
    # :subject          = The subject of the newsletter
    # :html             = A text blob that contains html version of the newsletter
    # :text             = The simple text version of the newsletter rendered into string
    #
    def send_newsletter(options = {})
      return false if options.empty?
      email_campaign = create_email_campaign(options)
      campaign_id    = @vr.createEmailCampaign({'session_id'     => @session_id,
                                                'email_campaign' => email_campaign})
      temp = @vr.setCampaignLists({'session_id'  => @session_id,
                                   'campaign_id' => campaign_id,
                                   'list_ids'    => [options[:list_id]]})
      rescue Exception => error
       raise  error
    end
    
    def create_member_data(attributes = {})
      [{"name"  => "email_address",
        "value" => attributes[:email]},
       {"name"  => "First_Name",
        "value" => attributes[:first_name]},
       {"name"  => "Last_Name",
        "value" => attributes[:last_name]}]
    end
  
    def create_email_campaign(attributes = {})
      #lets go ahead and create a campaign
      { 'name' => attributes[:campaign_name] || ("Camp." +  DateTime.now.to_s),
        'type' => "freeform",
        'from_label'    => attributes[:from],
        'support_email' => attributes[:support_email] || VR_USERNAME,
        'send_friend'   => attributes[:send_friend]   || true,
        'redirect_url'  => attributes[:redirect_url]  || VR_REDIRECT,
        'contents' => [
                       {
                         'type' => 'freeform_html', 
                         'copy' => attributes[:html]
                       },
                       {
                         'type' => 'freeform_text',
                         'copy' => attributes[:text]
                       },
                       {
                         'type' => 'subject',
                         'copy' => attributes[:subject]
                       },
                       {
                         'type' => 'unsub_message',
                         'copy' => "You have subscribed to this email. Would you like to unsubscribe? If so ",

                       }                                              
                      ],    
      }
    end
    
    def load_vr_options
      @vr.options["protocol.http.basic_auth"] << [VR_WSDL,VR_USERNAME,VR_PASSWORD]
      # Add in cert if one exists
      if VR_CERT
        client_cert_path = File.join(RAILS_ROOT, "config", "certs", VR_CERT)
        @vr.options['protocol.http.ssl_config.client_cert'] = client_cert_path if File.exists?(client_cert_path)
      end
      # Add in key if one exists
      if VR_KEY
        client_key_path = File.join(RAILS_ROOT, "config", "certs", VR_KEY)
        @vr.options['protocol.http.ssl_config.client_key'] = client_key_path if File.exists?(client_cert_path)
      end
      # Lazy verification
      @vr.options['protocol.http.ssl_config.verify_mode'] = OpenSSL::SSL::VERIFY_NONE #OpenSSL::SSL::VERIFY_PEER
      #@vr.options['protocol.http.ssl_config.verify_depth'] = 1
      # Lazy ciphers - shouldn't this be taken care of in the cert?
      #@vr.options['protocol.http.ssl_config.ciphers'] = 'ALL'
    end
  
  
end
