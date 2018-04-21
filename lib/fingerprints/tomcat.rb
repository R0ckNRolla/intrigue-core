module Intrigue
  module Fingerprint
    class Tomcat

      def generate_fingerprints(uri)
        {
          :uri => "#{uri}",
          :checklist => [
            {
              :name => "Apache Tomcat",
              :description => "Tomcat Application Server",
              :type => "content",
              :content => /<title>Apache Tomcat/,
              :test_site => "https://cms.msu.montana.edu/",
              :dynamic_name => lambda{|x| x.scan(/<title>.*<\/title>/)[0].gsub("<title>","").gsub("</title>","").chomp }
            }
          ]
        }
      end

    end
  end
end