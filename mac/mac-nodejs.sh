#!/bin/bash
#
# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Script to configure a mac machine.

set -eu

# Install NodeJS
if [ ! -d "/Users/ci/node" ]; then
  mkdir -p "/Users/ci/node"
  (cd "/Users/ci/node" && curl "https://nodejs.org/dist/v6.9.1/node-v6.9.1-darwin-x64.tar.gz" | tar zx)
  (PATH=/Users/ci/node/node-v6.9.1-darwin-x64/bin:$PATH npm install -g typescript@2.3.4 fried-twinkie@0.0.14)
fi
