function v = LINK_FIRST_MOMENT_OF_MASS_X()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = iDynTreeMEX(0, 33);
  end
  v = vInitialized;
end
