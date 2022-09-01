FROM gitpod/workspace-full-vnc

# ENV CYPRESS_CACHE_FOLDER=/workspace/.cypress-cache

RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - \
 && sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"

# Install framework dependencies
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
 && sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
   firefox \
   libgtk2.0-0 \
   libgtk-3-0 \
   libnotify-dev \
   libgconf-2-4 \
   libnss3 \
   libxss1 \
   libasound2 \
   libxtst6 \
   microsoft-edge-dev \
   xauth \
   xvfb \
 && sudo apt-get -y install ./google-chrome-stable_current_amd64.deb \
 && sudo rm ./google-chrome-stable_current_amd64.deb \
 && sudo ln -s /usr/bin/google-chrome /usr/bin/chrome \
 && sudo ln -s /usr/bin/microsoft-edge-dev /usr/bin/edge \
 && sudo rm -rf /var/lib/apt/lists/*