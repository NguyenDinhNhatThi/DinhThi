import { Component } from "react";
import { Link } from "react-router-dom";
class Samsung extends Component {
    constructor(props) {
        super(props);
    }
    state = {};
    render() {
        return (
            <section className="padding-bottom-sm">
                <header className="section-heading heading-line">
                    <h4 className="title-section text-uppercase">Samsung</h4>
                </header>
                <div className="row row-sm">
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link to="/product-detail/1" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/Samsung-Galaxy-A53.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy A53
                                </Link>
                                <div className="price mt-1">$179.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link href="#" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/Samsung-Galaxy-S21-FE.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy S21 FE
                                </Link>
                                <div className="price mt-1">$280.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link href="#" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/samsung-galaxy-a54.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy A54
                                </Link>
                                <div className="price mt-1">$56.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link href="#" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/samsung-galaxy-s23-ultra.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy S23 Utral
                                </Link>
                                <div className="price mt-1">$179.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link href="#" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/samsung-galaxy-z-flip5.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy Z Flip5
                                </Link>
                                <div className="price mt-1">$179.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                    <div className="col-xl-2 col-lg-3 col-md-4 col-6">
                        <div className="card card-sm card-product-grid">
                            <Link href="#" className="img-wrap">
                                
                                <img src={require("../../../assets/images/items/samsung-galaxy-z-fold5.jpg")} />
                            </Link>
                            <figcaption className="info-wrap">
                                <Link href="#" className="title">
                                    Samsung Galaxy Z Flod5
                                </Link>
                                <div className="price mt-1">$280.00</div> {/* price-wrap.// */}
                            </figcaption>
                        </div>
                    </div>
                    {/* col.// */}
                </div>
                {/* row.// */}
            </section>

        );
    }
}
export default Samsung;