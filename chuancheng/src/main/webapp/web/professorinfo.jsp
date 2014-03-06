<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/compiled/user-profile.css"/>" media="screen" />
<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="user-profile">
                <!-- header -->
                <div class="row-fluid header">
                    <div class="span8">
                        <img src="<c:url value="/resources/web/img/contact-profile.png"/>" class="avatar img-circle" />
                        <h3 class="name">刘大为</h3>
                        <span class="area">当代艺术家</span>
                        <span class="area"><a href="works.jsp">作品</a></span>
                    </div>
                    <a class="btn-flat icon pull-right delete-user" data-toggle="tooltip" title="Delete user" data-placement="top">
                        <i class="icon-trash"></i>
                    </a>
                     <a class="btn-flat icon large pull-right edit">
                      	编辑
                    </a>
                </div>

                <div class="row-fluid profile">
                    <!-- bio, new note & orders column -->
                    <div class="span9 bio">
                        <div class="profile-box">
                            <!-- biography -->
                            <div class="span12 section">
                                <h6>个人简介：</h6>
                                <p>
                                  刘大为，1945年生，祖籍山东诸城。1968年毕业于内蒙古师范大学美术系。1980年毕业于中央美术学院中国画系研究生班。现任解放军艺术学院美术系教授、主任，中国文联副主席、中国美术家协会主席、教科文组织下属国际造型艺术家协会主席、全国政协委员。
　　主要作品《布里亚特婚礼》、《雏鹰》、《幼狮》、《张华壮曲谱新篇》、《小米加步枪》、《漠上》、《阳光下》、《马背上的民族》、《晚风》、《辉煌之路》、《帕米尔高原的婚礼》、《草原上的歌》、《巴扎归来》、《人民公仆》、《雪线》、《远山》、《雪域生灵》等。
　　出版有《写意人物画技法》、《刘大为速写》、《刘大为作品集》、《刘大为小品集》、《刘大为水彩画作品》、《史诗与牧歌——刘大为作品集》等。其作品多次参加国内重大展览并获奖，在日本、英国、美国、德国、法国及香港、台湾等国家和地区展出。
                                
								</p>
                            </div>

                            <h6>个人作品</h6>
                            <br />
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th class="span2">
                                            Order ID
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>
                                            Date
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>
                                            Items
                                        </th>
                                        <th class="span3">
                                            <span class="line"></span>
                                            Total amount
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- row -->
                                    <tr class="first">
                                        <td>
                                            <a href="#">#459</a>
                                        </td>
                                        <td>
                                            Jan 03, 2013
                                        </td>
                                        <td>
                                            3
                                        </td>
                                        <td>
                                            $ 3,500.00
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="#">#510</a>
                                        </td>
                                        <td>
                                            Feb 22, 2013
                                        </td>
                                        <td>
                                            5
                                        </td>
                                        <td>
                                            $ 800.00
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <a href="#">#618</a>
                                        </td>
                                        <td>
                                            Jan 03, 2013
                                        </td>
                                        <td>
                                            8
                                        </td>
                                        <td>
                                            $ 3,499.99
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <!-- new comment form -->
                            <div class="span12 section comment">
                                <h6>Add a quick note</h6>
                                <p>Add a note about this user to keep a history of your interactions.</p>
                                <textarea></textarea>
                                <a href="#">Attach files</a>
                                <div class="span12 submit-box pull-right">
                                    <input type="submit" class="btn-glow primary" value="Add Note" />
                                    <span>OR</span>
                                    <input type="reset" value="Cancel" class="reset" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- side address column -->
                    <div class="span3 address pull-right">
                        <h6>Address</h6>
                        <iframe width="300" height="133" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.mx/?ie=UTF8&amp;t=m&amp;ll=19.715081,-155.071421&amp;spn=0.010746,0.025749&amp;z=14&amp;output=embed"></iframe>
                        <ul>
                            <li>2301 East Lamar Blvd. Suite 140. </li>
                            <li>City, Arlington. United States,</li>
                            <li>Zip Code, TX 76006.</li>
                            <li class="ico-li">
                                <i class="ico-phone"></i>
                                1817 274 2933
                            </li>
                             <li class="ico-li">
                                <i class="ico-mail"></i>
                                <a href="#">alejandra@detailcanvas.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->