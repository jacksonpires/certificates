require_relative "certificate"

class NullCertificate < Certificate
  def perform
    # no-op
  end
end
