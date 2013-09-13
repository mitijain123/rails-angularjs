@Ctrl = ($scope) ->
  $scope.current_index = 0
  $scope.checkPrevious = ->
    alert('hi')
    $scope.current_index == 1
  $scope.loadImages = ->
    $scope.images = ['/assets/AlphaBlip2.png','/assets/AlphBlip.png', '/assets/Atlanta1.jpg']
    $scope.current_index = 0
