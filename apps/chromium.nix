  { config, pkgs, ... }:


{
  # Chromium
  programs.chromium = {
    enable = true;
  };
  programs.chromium.extensions = [
    "cjpalhdlnbpafiamejdnhcphjbkeiagm" # UBlock
    "ldpochfccmkkmhdbclfhpagapcfdljkj" # Decentraleyes
    "pkehgijcmpdhfbdbbnkijodmdjhbjlgp" # Privacy Badger
    "hkgfoiooedgoejojocmhlaklaeopbecg" # Picture-in-Picture
    "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
  ];

}