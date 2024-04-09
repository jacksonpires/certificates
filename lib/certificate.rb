require_relative "certificate_factory"

class Certificate
  def self.performs(certificate)
    p "Registering #{certificate}"
    CertificateFactory.register(certificate, self)
  end

  attr_reader :options

  def initialize(options)
    @options = options
  end

  def perform; end

  private

  def save_pdf?
    options[:save_pdf]
  end
end
