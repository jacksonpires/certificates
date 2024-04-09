require_relative "null_certificate"

class CertificateFactory
  def self.build(key, options)
    certificate_class(key).new(options)
  end

  def self.register(key, klass)
    certificates[key] = klass
  end

  def self.certificate_class(key)
    certificates[key] || NullCertificate
  end

  def self.certificates
    @certificates ||= {}
  end
end
