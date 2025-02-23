# frozen_string_literal: true
# rubocop:todo all

# Copyright (C) 2020 MongoDB Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Mongo
  class Error

    # A KMS-related error during client-side encryption.
    class KmsError < CryptError
      def initialize(message, code: nil, network_error: nil)
        @network_error = network_error
        super(message, code: code)
      end
    end

    # @return [ true, false ] whether this error was caused by a network error.
    def network_error?
      @network_error == true
    end
  end
end
