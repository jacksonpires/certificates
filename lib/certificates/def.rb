require_relative "../certificate"

module Certificates
  class Def < Certificate
    performs :def

    def perform
      fetch_bigdatacorp
      send_emails
    end

    private

    def fetch_bigdatacorp
      puts "Fetching data from BigDataCorp"
    end

    def send_emails
      puts "Sending emails"
    end
  end
end
