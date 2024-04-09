require_relative "lib/certificate_factory"
require_relative "lib/certificates/abc"
require_relative "lib/certificates/def"

CertificateFactory.build(:abc, { save_pdf: true }).perform
p "-----------------"
CertificateFactory.build(:def, {}).perform
