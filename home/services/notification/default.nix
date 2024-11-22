{
  services.mako = {
    enable = true;
    maxVisible = -1;
    defaultTimeout = 1500;
    anchor = "top-right";
    backgroundColor = "#161616";

    borderColor = "#ffffff";
    borderSize = 1;
    borderRadius = 0;
    height = 100;

    margin = "50,0,0,0";
    maxIconSize = 128;
    padding = "12";
    width = 350;
    layer = "overlay";
    font = "Monaspace Radon";
    format = "<span foreground='#be95ff' size='14000' weight='bold'>%s</span>";
    extraConfig = ''
      on-button-left=invoke-default-action
      text-alignment=center

      [urgency=high]
      text-color=#ff7eb6

      [urgency=critical]
      text-color=#ee5396
      default-timeout=10000
    '';
  };
}
