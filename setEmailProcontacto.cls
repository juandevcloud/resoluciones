trigger setEmailProcontacto on Contact (after insert, after update) {
    ContacTriggerHandler.VerifyHasIdProcontacto(Trigger.New);
}
