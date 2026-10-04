public class Lasagna {
    
    public int expectedMinutesInOven(){
        int cookingTime=40;
        return cookingTime;
    }

    public int remainingMinutesInOven(int currentMinsInOven){
        return expectedMinutesInOven() - currentMinsInOven;
    }

    public int preparationTimeInMinutes(int numLayers){
        int prepTimePerLayer =2;
        return prepTimePerLayer*numLayers;
    }
    
    public int totalTimeInMinutes(int numLayers, int currentMinsInOven){
        return preparationTimeInMinutes(numLayers)+currentMinsInOven;
    }
}
