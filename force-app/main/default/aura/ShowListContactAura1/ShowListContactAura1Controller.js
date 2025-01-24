({
    doInit: function(component, event, helper){
        var action = component.get("c.getContacts");
        action.setCallback(this, function(response){
            if (response.getState() === "SUCCESS"){
                console.log("DEBUG"), response.getReturnValue();
                component.set("v.contacts", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})