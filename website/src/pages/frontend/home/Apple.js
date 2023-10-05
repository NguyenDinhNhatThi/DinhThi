import { Component } from "react";
import { Link } from "react-router-dom";
class Apple extends Component {
    constructor(props) {
        super(props);
    }
    state = {};
    render() {
        return (
            <section className="padding-bottom-sm">
                <header className="section-heading heading-line">
                    <h4 className="title-section text-uppercase">Apple</h4>
                </header>
                <div className="row row-sm">
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            
                            <Link to="/product-detail/1" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/iphone_14_pro_max.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    iPhone 14 Pro Max
                                </Link>
                                <div className="price mt-1">$179.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                   
                    
                   
                    
                    
                </div>
                
            </section>

        );
    }
}
export default Apple;