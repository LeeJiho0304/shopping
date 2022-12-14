<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Review Board</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<style>
			body{
			    background:#f3f3f3;
			    margin-top:20px;
			    color: #616f80;
			}
			.card {
			    border: none;
			    margin-bottom: 24px;
			    -webkit-box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			    box-shadow: 0 0 13px 0 rgba(236,236,241,.44);
			}
			
			.avatar-xs {
			    height: 2.3rem;
			    width: 2.3rem;
			}
		</style>
	</head>
	<body>
		

		<div class="container">
		    <div class="row">
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-archive text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1 text-warning">★</h5>
		                    <p class="text-muted mb-0">리뷰 게시판</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-th text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">18</h5>
		                    <p class="text-muted mb-0">총 게시물 수</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-3 col-md-6">
		            <div class="card bg-pattern">
		                <div class="card-body">
		                    <div class="float-right">
		                        <i class="fa fa-file text-primary h4 ml-3"></i>
		                    </div>
		                    <h5 class="font-size-20 mt-0 pt-1">06</h5>
		                    <p class="text-muted mb-0">특별 게시물</p>
		                </div>
		            </div>
		        </div>
		        <div class="col-xl-3 col-md-6">
		            <div class="card">
		                <div class="card-body">
		                    <form>
		                        <div class="form-group mb-0">
		                            <label>검색</label>
		                            <div class="input-group mb-0">
		                                <input type="text" class="form-control" placeholder="검색어..." aria-describedby="project-search-addon" />
		                                <div class="input-group-append">
		                                    <button class="btn btn-danger" type="button" id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
		                                </div>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </div>
		        </div>
		    </div>
		    <!-- end row -->
		
		    <div class="row">
		        <div class="col-lg-12">
		            <div class="card">
		                <div class="card-body">
		                    <div class="table-responsive project-list">
		                        <table class="table project-table table-centered table-nowrap">
		                            <thead>
		                                <tr>
		                                    <th scope="col">No</th>
		                                    <th scope="col">제목</th>
		                                    <th scope="col">작성 일자</th>
		                                    <th scope="col">작성자</th>
		                                    <th scope="col">별점</th>
		                                    <th scope="col">Progress</th>
		                                    <th scope="col">수정</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <tr>
		                                    <th scope="row">1</th>
		                                    <td>최고최고굿굿</td>
		                                    <td>02/5/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 이이이</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">100%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">2</th>
		                                    <td>매우만족해요</td>
		                                    <td>04/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 지지지</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">  ★★★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">78%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 78%;" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">3</th>
		                                    <td>별로에요</td>
		                                    <td>06/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 호호호</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">    ★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">100%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		                                <tr>
		                                    <th scope="row">4</th>
		                                    <td>그냥 그래요</td>
		                                    <td>07/5/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 이연희</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning"> ★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">100%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">5</th>
		                                    <td>기대보다좋아요</td>
		                                    <td>08/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 여수한</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">★★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">54%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 54%;" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">6</th>
		                                    <td>그냥그래유</td>
		                                    <td>10/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 김지영</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">   ★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">41%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 41%;" aria-valuenow="41" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		                                <tr>
		                                    <th scope="row">7</th>
		                                    <td>아주 좋아요</td>
		                                    <td>12/5/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 톰캣</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">  ★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">100%</span></p>
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">8</th>
		                                    <td>아주 좋아요</td>
		                                    <td>13/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 사칙연산</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">  ★★★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">84%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 84%;" aria-valuenow="84" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		
		                                <tr>
		                                    <th scope="row">9</th>
		                                    <td>아주 좋아요</td>
		                                    <td>15/6/2019</td>
		                                    <td>
		                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> 햄버거</span>
		                                    </td>
		                                    <td>
		                                        <div class="team text-warning">★★★★
		                                        </div>
		                                    </td>
		                                    <td>
		                                        <p class="mb-0">Progress<span class="float-right">100%</span></p>
		
		                                        <div class="progress mt-2" style="height: 5px;">
		                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
		                                        </div>
		                                    </td>
		
		                                    <td>
		                                        <div class="action">
		                                            <a href="#" class="text-success mr-4" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"> <i class="fa fa-pencil h5 m-0"></i></a>
		                                            <a href="#" class="text-danger" data-toggle="tooltip" data-placement="top" title="" data-original-title="Close"> <i class="fa fa fa-remove h5 m-0"></i></a>
		                                        </div>
		                                    </td>
		                                </tr>
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- end project-list -->
		
		                    <div class="pt-3">
		                        <ul class="pagination justify-content-end mb-0">
		                            <li class="page-item disabled">
		                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
		                            </li>
		                            <li class="page-item"><a class="page-link" href="#">1</a></li>
		                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
		                            <li class="page-item"><a class="page-link" href="#">3</a></li>
		                            <li class="page-item">
		                                <a class="page-link" href="#">다음</a>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    <!-- end row -->
		</div>
	</body>
</html>