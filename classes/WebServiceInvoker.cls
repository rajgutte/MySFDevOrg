public without sharing class WebServiceInvoker {

    public Double x { get; set; }
    public Double y { get; set; }
    public Double result;

    public WebServiceInvoker() {
    }
    
    public PageReference calculate() {
    
        CalculatorWebService.ICalculator CalcWS = new CalculatorWebService.ICalculator();
    
        result = CalcWS.add(x,y);
        System.debug('Add Result - ' + result);
    
        return null;
    }
       
}