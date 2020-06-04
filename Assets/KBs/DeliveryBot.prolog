:- consult("UnityLogic/KBs/UnityLogicAgentAPI.prolog").



desire goToPickup.

add goToPickup && (\+ belief hasBox) => [
	act (getArea("Pickup"), Pickup),
	cr goTo(Pickup),
	add_desire(pickupBox),
	stop

].

add pickupBox && (\+ belief hasBox) => [
	act (senseArtifact, Artifact),
	cr goTo(Artifact),
	act pickUp(Artifact),
	add_belief(hasBox),
	add_desire(placeBox(Artifact)),

	stop

].

add placeBox(Artifact) && (belief hasBox) => [
	act printLog("A"),
	check_artifact_belief(Artifact, storage_area_A),
	act (getArea("A"), Area),
	cr goTo(Area),
	act dropDown,
	del_belief(hasBox),
	add_desire(goToPickup),

	stop

].

add placeBox(Artifact) && (belief hasBox) => [
	act printLog("B"),
	check_artifact_belief(Artifact, storage_area_B),
	act (getArea("B"), Area),
	cr goTo(Area),
	act dropDown,
	del_belief(hasBox),
	add_desire(goToPickup),

	stop

].

add placeBox(Artifact) && (belief hasBox) => [
	act printLog("C"),
	check_artifact_belief(Artifact, storage_area_C),
	act (getArea("C"), Area),
	cr goTo(Area),
	act dropDown,
	del_belief(hasBox),
	add_desire(goToPickup),

	stop

].

add placeBox(Artifact) && (belief hasBox) => [
	act printLog("D"),
	check_artifact_belief(Artifact, storage_area_D),
	act (getArea("D"), Area),
	cr goTo(Area),
	act dropDown,
	del_belief(hasBox),
	add_desire(goToPickup),

	stop

].