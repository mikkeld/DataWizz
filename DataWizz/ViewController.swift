
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("test")
        
        let stockMarket = Stories()
        stockMarket.headline = "Boom and burst"
        stockMarket.subHeadline = "The rise and fall of the S&P 500"
        stockMarket.summary = "Through the last ten year blah blah"
        stockMarket.story = "Here comes a long story"
        stockMarket.chart = "stockmarket.jpg"
        
        headlineLabel.text = stockMarket.headline
        subheaderLabel.text = stockMarket.subHeadline
        chart.image = UIImage(named: stockMarket.chart)
        summaryLabel.text = stockMarket.summary
        bodyLabel.text = stockMarket.story
        
        let url = NSURL(string: "https://api.github.com/users/mralexgray/repos")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            if let urlContent = data {
                
                do {
                    
                    let jsonResult = try NSJSONSerialization.JSONObjectWithData(urlContent, options: NSJSONReadingOptions.MutableContainers)
                    
                } catch {
                    
                    print("JSON failed")
                    
                }
                
                
                
            }
        }
        
        task.resume()
        
    }
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var subheaderLabel: UILabel!
    @IBOutlet weak var chart: UIImageView!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    

    

    

}

