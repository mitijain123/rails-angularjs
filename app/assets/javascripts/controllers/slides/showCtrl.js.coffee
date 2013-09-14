@Ctrl = ($scope) ->
  $scope.images = []
  $scope.current_index = 0
  $scope.next = ->
    $scope.current_index += 1
  $scope.prev = ->
    $scope.current_index -= 1
  $scope.checkEndSlide = ->
    $scope.images.length == $scope.current_index + 1
  $scope.checkStartSlide = ->
    $scope.current_index == 0
  $scope.loadImages = (slide_id) ->
    $.ajax(
      type: "GET"
      dataType: "json"
      url: "/slides/show"
      data:
        id: slide_id
    ).done (result) ->
      $scope.images = result.data