require_relative "../certificate"

module Certificates
  class Abc < Certificate
    performs :abc

    def perform
      fetch_bigdatacorp
      send_emails
      save_pdf if save_pdf?
    end

    private

    def fetch_bigdatacorp
      puts "Fetching data from BigDataCorp"
    end

    def send_emails
      puts "Sending emails"
    end

    def save_pdf
      puts "Saving PDF"
    end
  end
end
