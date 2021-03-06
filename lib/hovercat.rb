# frozen_string_literal: true

require 'hovercat/version'
require 'hovercat/gateways/message_gateway'
require 'hovercat/helpers/configuration'
require 'hovercat/connectors/bunny_connector'
require 'hovercat/errors/unable_to_send_message_error'
require 'hovercat/errors/missing_configuration_file_error'
require 'hovercat/errors/unexpected_error'
require 'hovercat/factories/retry_message_job_factory'
require 'hovercat/gateways/message_gateway'
require 'hovercat/gateways/team_notifier_gateway'
require 'hovercat/models/message'
require 'hovercat/models/publish_failure_response'
require 'hovercat/models/publish_successfully_response'

module Hovercat
  CONFIG = Hovercat::Helpers::Configuration.new.configuration

  class Sender
    def self.publish(params)
      Hovercat::Gateways::MessageGateway.send(params)
    end
  end
end
