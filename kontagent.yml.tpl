# Parameter: kt_api_key
#
# Description: App-specific Kontagent API key found in the "Account" section
#              of the Kontagent website. Must be unique for each application 
#              that you want to track. (32 character hex number)
#
kt_api_key:    00000000000000000000000000000000

# Parameter: kt_secret_key
#
# Description: Kontagent secret key for the app you specified with the 
#              KT_API_KEY parameter. The secret key is found in the same 
#              location on the Kontagent website as the KT_API_KEY. (32 
#              character hex number).
#
kt_secret_key: 00000000000000000000000000000000



# Parameter: canvas_page_name
#
# Description: The canvas page name that you have specified on Facebook's 
#              application configuration page. For example, if your 
#              application's full canvas page URL is apps.facebook.com/yourapp,
#              this value should be set to 'yourapp'.
#
# Example: yourapp
#
canvas_page_name :


# Parameter: call_back_host
#
# Description: The call_back_host value is the host name component of your
#              application's callback URL. For example, if your callback URL is
#              www.example.com/myapp, this value should be set to 
#              www.example.com. This value MUST start with 'http://'.
#
# Example: http://your.callback.host
#
call_back_host: 

# Parameter: call_back_req_uri
#
# Description: The call_back_req_uri value is the path component of your
#              application's callback URL. For example, if your callback URL is
#              www.example.com/myapp, this value should be set to '/myapp'. Note
#              that this value must start with a '/'.
#
# Example: /your_app_uri
#
call_back_req_uri: 


# Parameter: use_test_server
# 
# Description: Kontagent has a test server that data can be sent to during the 
#              initial instrumentation phase to verify that an application has
#              been instrumented properly. The Kontagent website provides an
#              interface to this test server, which shows the number of 
#              different types of messages that have been received in the last
#              three hours and the parameters associated with the last 10
#              messages received. This can be used to resolve any instrumentation
#              issues you may encounter.
#
#              The test server can be accessed on the Kontagent website by 
#              logging in and then clicking on "Support", "Tools", "Test Server".
#
#              If it is set to true, kt_host_test will be used. If it's set to
#              false, kt_host, will be used.
#              ************************** IMPORTANT ***************************
#              The data sent to the test server IS NOT SAVED PERMANENTLY AND 
#              IS KEPT SEPARATE FROM THE DATA SENT TO THE REGULAR DATA CAPTURE
#              SERVER. The test server is merely intended as a test tool and 
#              must be disabled to capture data that can later be viewed in the 
#              regular dashboard.
#              ************************** IMPORTANT ***************************
use_test_server: false


###############################################################################
#                          starling configuration                             #
###############################################################################

# Parameter: mode
#
# Valid values: async, sync
#
# Description: Set the mode to to 'async' to use the starling queue for 
#              outgoing Kontagent traffic. Set it to 'sync' to disable the use 
#              of the starling queue. NOTE: see the documentation on 
#              Kontagent's websites for instructions on how to install 
#              starling, if necessary.
# 
mode: sync                     

# Parameter: queue_address 
#
# Description: Set the [ip]:[port] used by your starling queue installation. 
#              This value will be ignored if 'mode' is set to 'sync'.
#
# Example: 127.0.0.1:22122
#
queue_address:                  


###############################################################################
#                DO NOT CHANGE VALUES BELOW THIS LINE UNLESS                  #
#                  SPECIFICALLY TOLD BY KONTAGENT TO DO SO                    #
###############################################################################

# Parameter: kt_host
# 
# Description: The name of the Kontagent API server to which data is sent. Do 
#              NOT change this value.
#
kt_host: api.kontagent.com

# Parameter: kt_url
# 
# Description: The path on the Kontagent API server that is used to collect the
#              analytics data. Do NOT change this value.
#
kt_url: /api

# Parameter: kt_host_test
# 
# Description: The name of the Kontagent test server to which data is sent when
#              the test mode is enabled. Do NOT change this value.
#
kt_host_test: api.test.kontagent.net
