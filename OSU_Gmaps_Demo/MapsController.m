//
//  MapsController.m
//  OSU_Gmaps_Demo
//
//  Created by Benjamin Friedman on 10/13/14.
//

#import "MapsController.h"
//#define LATI 44.567
//#define LONG -123.278

@interface MapsController ()

@end

@implementation MapsController

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder: aDecoder];
    if(self) {
        
    }
    return self;
}

-(void)setLatitude: (double) latitude andLongitude: (double) longitude {
    _latitude = latitude;
    _longitude = longitude;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)showMap {
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude: _latitude longitude: _longitude zoom: 12];
    _mapView = [GMSMapView mapWithFrame: CGRectZero camera: camera];
    _mapView.myLocationEnabled = YES;
    self.view = _mapView;
    
    //Creates a marker in the center of the map
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake( _latitude, _longitude);
    marker.title = @"Corvallis";
    marker.snippet = @"Oregon";
    marker.map = _mapView;
    
    //let's add a Polyline, in this case Corvallis Transit's Route 1
    GMSPolyline *polyLine = [[GMSPolyline alloc] init];
    //our poly line is retrieved in encoded format, there's a nice function to decode it for us here as a path
    GMSPath *path = [GMSPath pathFromEncodedPath: @"_a_oGh{ioVL{@RHdAb@fAd@p@VpClAQlAa@`CCPWvA_@rBq@lEw@xE}@c@_CcAiEgBIj@QdAYfBo@lEm@zDo@vDKn@c@nCm@zDo@zDMx@a@hC{@~Fy@|FGj@CPk@nEo@nEO\\a@j@i@n@{@dAcA~AyBrCUXo@v@iB`CYf@?l@?\\?jD?T@`E?nE@bE?^FhD?p@?DGpC@xE}@?cC@}D?{@?k@@eABS?gB?sA@eB?{EB_A?{D@uAtBCDKLoDzFKNyC|EGLgBxCc@r@k@|@aBbCw@hAs@x@]`@wApAiClC_A`As@p@_B`BiCjCSTIF}DzD}@|@mAlAq@j@u@b@w@R??{@DcA@s@K]GKGOE[QWSq@s@Yg@EGKMUY_@c@[_@i@g@UU_@ScAi@OGi@MYAWFULMRoAfCu@dBOVU`@WZGFa@^s@NaAHAiA@}@Bo@P}ALw@XkBN{@d@yCHs@JwABaA@m@@eL?_I@_L?wHAqAGuBCk@GaAIwAGuB?i@?aCDeBHuBPiFJaGB}C@iC?qG?w@@uAHaAL}@RcA\\eAn@kCNcAPsBDuB?yAM}AQ_BUqA[iAo@uB_@mAYaAUw@[gAScAUcBIuACyAAcC?qB@wA?qA?uAGeBCq@AuU?m@BqAB_AFoBL}AJoADo@Bs@?gAEmBGy@QmAO_AKs@Iy@CYCa@Eq@Cq@CuB?oAEgECuD?mE?aCBk@H{@Jo@z@cEXy@d@uAPcANmA@m@AcBA}JBo@Ju@X}AV_Aj@_BrD{Iz@mBX_@PIj@Kh@Hj@\\^l@|AdD^f@@BXXZJZFfA@pAGt@Br@Np@TxCnBfFhEp@ZVcAB_@@aHpA??{DIWOMOCM@OLIRA`@@~CA`HC^WbAq@[gFiEk@a@mBmAq@Us@Ou@CqAF@zC?zABbC?bDDfJBjDFlIDtH@~@?~E?dBeGsCo@[_DwAqDaB}EyB{CwAKn@Iz@Cj@?`C?vA?tBBtDDfE?nABtBBp@Dp@B`@BXHx@Jr@N~@PlAFx@DlB?fACr@En@KnAM|AGnBC~@CpA?l@@tB?~QBp@FdB?tA?pAAvA?pB@bCBxAHtATbB~Ag@DAn@Mp@E`AFlBn@lCxBnAt@x@~@d@fAJ`@NvAEvGHnCw@?sEAQ@w@Hu@Lc@FOBSDEtBQrBObAo@jC]dASbAM|@I`A?b@Ap@?v@?pGAhCC|C_A?k@Lk@Zi@f@]v@yAvEg@zAwA~D[r@w@jAs@r@u@h@}@^^dCh@|DTdBL`ARzBBd@NnCHzBBtB@vAj@CXHdA\\`@Nf@T`AZ~@HlAC`B??~H?|HAfBAl@C`AKvAIr@e@xCOz@g@bDQ|ACn@A|@@hA`AIr@O`@_@^c@Ta@NWt@eBZm@r@yALSTMVGX@h@LrAp@^RTTh@f@Z^^b@TXj@|@p@r@VRZPZL\\Fr@JbAAz@Ev@St@c@p@k@Z[p@q@zFyF\\]hCkC~AaBrBsBf@i@`BcBvAqApA{Av@iA`BcCj@}@jCmEFMt@mAbBoCzDkGNStAuBzFAz@AdGAzDAR?dACfBA|D?`EA?_BAyBFwC?q@GiD?_@AcE?oEAaE?U?iE?m@Xg@`AoAf@q@n@w@nCmDbA_BdBuB`@k@N]n@oEn@aFFk@x@}Fz@_Gn@cEn@{Dl@{Dn@_En@wDTwAVcBn@mEXgBZqBt@sEv@sEn@gE@EBMN{@j@ITyA"];
    //our polyline need only have it's path property set
    polyLine.path = path;
    //set this polyLine's map to our mapview
    polyLine.map = _mapView;
    //finally set the stroke (line) color of our polyline
    polyLine.strokeColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
