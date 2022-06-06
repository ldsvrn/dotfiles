//Anime4K v4.0 GLSL

// MIT License

// Copyright (c) 2019-2021 bloc97
// All rights reserved.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x1
//!HOOK NATIVE
//!BIND HOOKED
//!SAVE conv2d_tf
//!WIDTH HOOKED.w
//!HEIGHT HOOKED.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (HOOKED_texOff(vec2(x_off, y_off)))
vec4 hook() {
    vec4 result = mat4(-0.099060915, 0.3923101, -0.7415806, 0.9435729, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(-1, -1);
    result += mat4(0.17079261, 0.37978938, -0.520249, -0.039801545, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(-1, 0);
    result += mat4(0.26039422, 0.4474376, -0.22996004, -0.6646793, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(-1, 1);
    result += mat4(0.4339303, -0.15473004, 0.44852012, 0.031396084, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(0, -1);
    result += mat4(-0.64918137, -0.5364097, 0.92860705, 0.089001276, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(0, 0);
    result += mat4(-0.5262542, -0.31257918, 0.26007193, -0.35544258, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(0, 1);
    result += mat4(0.6785428, 0.59156984, 0.10968513, 0.10776836, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(1, -1);
    result += mat4(-0.7501716, -0.6262271, -0.03206066, -0.54153615, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(1, 0);
    result += mat4(0.26118368, -0.1795623, -0.16003633, 0.4333213, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) * go_0(1, 1);
    result += vec4(-0.015652956, -0.009660043, 0.027990408, 0.026100643);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x8
//!HOOK NATIVE
//!BIND conv2d_tf
//!SAVE conv2d_1_tf
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_tf_texOff(vec2(x_off, y_off))), 0))
#define go_1(x_off, y_off) (max(-(conv2d_tf_texOff(vec2(x_off, y_off))), 0))
vec4 hook() {
    vec4 result = mat4(0.4433141, -0.52499425, 0.046358343, 0.101932794, 0.07490187, -0.22856422, -0.0678454, -0.124605656, -0.20328549, -0.291442, -0.24404803, 0.014648813, -0.017156124, -0.16496892, -0.24695021, 0.00521921) * go_0(-1, -1);
    result += mat4(-0.44990733, 0.05888794, -0.20514034, 0.30982417, 0.3364184, 0.22266507, -0.4072249, -0.3487131, -0.020831708, 0.20633079, 0.07330769, -0.33950755, -0.21910293, -0.5376049, -0.108310476, -0.12860607) * go_0(-1, 0);
    result += mat4(0.24438362, -0.15204681, 0.096953675, 0.31609216, 0.070910364, 0.12019654, -0.17313893, 0.10363139, 0.39183995, 0.34064534, -0.09688061, -0.054398853, 0.12138135, -0.14002167, -0.062197324, 0.04794786) * go_0(-1, 1);
    result += mat4(0.1252366, 0.07819943, -0.25722212, -0.8323291, 0.3437318, -0.7936578, 0.46076307, 0.5556867, 0.014496385, -0.10429456, 0.23013552, 0.6013652, -0.34994322, 0.8102565, 0.3311985, -0.0065901834) * go_0(0, -1);
    result += mat4(-0.23729753, -0.077029794, -0.04131349, -0.6316972, -0.2752996, 0.09499561, 0.13008043, 0.1510687, 0.9451258, -0.023882821, 0.49941045, 0.16764432, 0.7467683, 0.5466672, 0.45010796, 0.33415246) * go_0(0, 0);
    result += mat4(0.15212935, -0.2904899, 0.3446247, 0.3997131, -0.09178659, 0.12230046, 0.12499929, 0.091155864, -0.5585882, 0.23370105, 0.0024698393, -0.037311006, -0.23660922, 0.2362503, 0.13217646, -0.041456454) * go_0(0, 1);
    result += mat4(-0.029589672, 0.3410139, -0.16331393, -0.17010854, -0.08950567, -0.109484494, -0.01276577, 0.3451667, -0.080173425, -0.20141087, 0.018062703, 0.16369069, -0.38467747, 0.10758536, -0.10964649, 0.08971134) * go_0(1, -1);
    result += mat4(0.068643674, -0.14650314, 0.6183346, 0.031407308, -0.12698703, 0.43091244, 0.046350196, -0.21392116, 0.06432168, 0.1815983, -0.8574005, 0.18475072, -0.10591848, 0.16734262, -0.29276568, -0.04085783) * go_0(1, 0);
    result += mat4(-0.24002433, 0.05567821, -0.55838335, 0.006298252, 0.052931167, -0.14839159, 0.01231768, -0.05281632, -0.39328524, 0.059732866, -0.20285709, -0.32822368, 0.05511618, -0.26512676, -0.12549138, 0.23172718) * go_0(1, 1);
    result += mat4(-0.27335954, 0.22952868, -0.026888583, -0.28520343, 0.35717782, -0.1702381, -0.2406121, 0.07710807, -0.007906842, 0.3957529, 0.32952088, 0.13497184, -0.10358878, 0.13490367, 0.25026694, 0.14740531) * go_1(-1, -1);
    result += mat4(0.48455012, -0.47995052, 0.37259352, -0.24933954, -0.2313914, -0.11936992, 0.43006817, 0.4292439, 0.0775366, 0.18938698, 0.15609962, 0.30946267, -0.0092760725, 0.6126318, 0.11308391, 0.16716176) * go_1(-1, 0);
    result += mat4(-0.12771618, -0.11256148, -0.2069067, -0.33435008, -0.3221056, -0.0646986, 0.01800523, 0.10732466, -0.40718922, -0.35144198, 0.23096202, -0.15490791, -0.18692271, -0.0999076, -0.0238269, 0.03672291) * go_1(-1, 1);
    result += mat4(-0.088076256, 0.40511674, 0.3801372, 0.4008574, -0.29265463, 0.6752483, -0.54496783, -0.50187254, 0.08680019, 0.15977804, -0.039421756, -0.7294936, 0.19642153, -0.5881188, -0.21505612, -0.045031253) * go_1(0, -1);
    result += mat4(0.02794496, 0.11224381, -0.10878131, 0.69211453, 0.43350375, -0.529319, -0.16209365, -0.21824516, -0.8558168, -0.030957827, -1.0234113, -0.20842017, -0.87804323, -0.16523257, -0.29839382, -0.48400262) * go_1(0, 0);
    result += mat4(-0.45207998, -0.1253287, -0.24361533, 0.24132788, 0.05023154, -0.054756377, -0.1359663, -0.28534168, 0.15477341, -0.011823537, 0.21048138, -0.053702887, 0.15389104, 0.31362605, 0.07355732, 0.06240377) * go_1(0, 1);
    result += mat4(-0.1645801, -0.26246127, 0.02035767, 0.2945473, 0.09618512, -0.00040694055, -0.14574085, -0.39789483, 0.114171274, 0.23436773, -0.047560725, -0.30439004, 0.33154467, -0.17034559, 0.30042756, 0.06126289) * go_1(1, -1);
    result += mat4(-0.12262775, 0.20360446, -0.4931943, 0.15840358, 0.09798332, -0.22380361, 0.053375926, 0.0019338684, 0.06097525, -0.41340315, 0.73059237, -0.042546786, 0.014085111, 0.20456235, 0.21343358, -0.0048543764) * go_1(1, 0);
    result += mat4(0.16972822, -0.06474215, 0.44195136, -0.08409704, -0.22029202, 0.2103656, 0.033851843, 0.04529015, 0.38057333, 0.143672, -0.02859345, 0.21708496, 0.18452373, -0.08197212, 0.03725875, -0.32469475) * go_1(1, 1);
    result += vec4(-0.00405834, -0.023924807, 0.026251758, 0.011618691);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x8
//!HOOK NATIVE
//!BIND conv2d_1_tf
//!SAVE conv2d_2_tf
//!WIDTH conv2d_1_tf.w
//!HEIGHT conv2d_1_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_1_tf_texOff(vec2(x_off, y_off))), 0))
#define go_1(x_off, y_off) (max(-(conv2d_1_tf_texOff(vec2(x_off, y_off))), 0))
vec4 hook() {
    vec4 result = mat4(-0.035231154, 0.21940987, -0.1624358, -0.16066472, -0.40752673, 0.20076573, -0.17997314, -0.14918722, 0.114474185, -0.07093662, -0.12817855, -0.30908084, 0.10539796, 0.13258643, -0.117882326, 0.197056) * go_0(-1, -1);
    result += mat4(0.17694004, -0.11110682, 0.15247792, -0.016084228, -0.046205726, -0.13634104, 0.22906536, 0.081877634, 0.6414104, -0.12020999, 0.13905282, 0.069297545, 0.12379061, -0.33126324, -0.17578804, 0.44542983) * go_0(-1, 0);
    result += mat4(0.0075800866, 0.07220774, 0.015600712, -0.44957566, -0.20131595, 0.2124041, 0.15687238, -0.082753375, 0.0008342513, -0.13307638, -0.0062197866, 0.15712139, -0.0028797514, -0.012479299, 0.15992627, 0.003348662) * go_0(-1, 1);
    result += mat4(0.38002935, 0.07250897, -0.12975474, -0.42424023, -0.06937969, 0.116472386, 0.38491055, -0.1177519, 0.35244787, -0.019264437, 0.08827593, 0.04907531, 0.07188827, 0.28479096, -0.5248707, -0.068321854) * go_0(0, -1);
    result += mat4(-0.2928726, -0.15012638, 0.017916752, 0.41318095, -0.08344823, -0.23474894, 0.6709355, 0.5603876, 0.7684714, -0.72722185, 0.09668331, 0.24742706, -0.026097013, -0.29047558, 0.4452922, -0.25663233) * go_0(0, 0);
    result += mat4(0.04770366, 0.10113918, -0.2882227, 0.038518667, 0.273424, 0.07838676, 0.040544286, -0.11948344, -0.23365021, -0.40878683, 0.20061114, 0.01701538, -0.2671606, -0.050215818, -0.012392114, 0.3173978) * go_0(0, 1);
    result += mat4(0.4843951, 0.39702863, 0.011701268, -0.22109756, 0.31664303, -0.05488849, 0.29532358, 0.022619229, -0.3008966, -0.2322407, -0.037120696, -0.02697216, 0.0031319608, 0.23147216, 0.15766443, -0.108783215) * go_0(1, -1);
    result += mat4(0.3967555, 0.11083297, 0.06621882, 0.0048522917, 0.436494, -0.27454227, 0.58519584, 0.06838078, -0.08865179, -0.16754934, -0.12916265, -0.17615037, 0.0929271, -0.09171673, 0.16515714, 0.2844519) * go_0(1, 0);
    result += mat4(0.07936945, -0.016640997, 0.11531847, -0.012220955, 0.093154624, 0.038420714, -0.098823056, -0.34263968, 0.10739235, -0.027156582, -0.12434694, -0.2859265, 0.27097723, 0.13020234, -0.32452518, -0.06881012) * go_0(1, 1);
    result += mat4(-0.46996227, -0.104856245, 0.31520033, 0.1120978, -0.31815624, -0.18286513, 0.54977226, 0.0920762, -0.42043883, -0.16273192, 0.470248, 0.1898168, -0.19330396, -0.08404528, -0.024007965, -0.053334564) * go_1(-1, -1);
    result += mat4(0.10069312, 0.25202686, 0.015933624, -0.22116995, -0.15331262, 0.13741909, 0.30681005, -0.016912831, -0.27606076, -0.07060349, 0.19936673, -0.076426245, -0.29215047, 0.3007957, -0.16961198, -0.43203548) * go_1(-1, 0);
    result += mat4(0.017513433, 0.08841951, -0.13202734, 0.058848586, -0.2305364, -0.022416664, 0.094477236, 0.06952937, 0.36745518, 0.083165415, 0.1101532, -0.35595208, -0.19158423, -0.07699299, 0.061035816, 0.40559405) * go_1(-1, 1);
    result += mat4(-0.42069364, 0.12825312, 0.29166454, 0.1826318, -0.29727626, -0.33836862, 0.28000757, 0.24888863, -0.16003777, -0.2936345, 0.08075218, -0.14168736, 0.08626778, -0.2028345, 0.24165046, -0.1330366) * go_1(0, -1);
    result += mat4(0.34948453, -0.2871826, -0.0036669618, -0.32381535, 0.17650248, -0.21728489, 0.035278477, -0.048220854, -0.51506597, 0.3420839, 0.23403837, -0.58786386, -0.3977426, 0.66728556, -0.82482404, 0.4921388) * go_1(0, 0);
    result += mat4(0.06536935, 0.1736201, 0.14981093, -0.29544574, -0.22767669, 0.2945208, 0.56768966, 0.10612778, 0.4637315, 0.11072122, -0.18671955, -0.6896538, 0.075704835, -0.012073349, 0.15817225, 0.36842802) * go_1(0, 1);
    result += mat4(-0.37910223, -0.29026076, -0.16649973, 0.13456057, -0.2375472, -0.42869443, 0.38337186, -0.026630152, 0.27867347, 0.14426495, 0.061338548, -0.1825622, -0.07041008, -0.40957245, -0.09966412, 0.15936233) * go_1(1, -1);
    result += mat4(-0.1919888, -0.20247653, -0.23182866, -0.31506872, -0.56710833, -0.5504491, 0.08069887, -0.35147738, 0.11103959, -0.00877981, 0.24794151, -0.12520947, -0.26015753, 0.14012602, -0.023379719, -0.2214232) * go_1(1, 0);
    result += mat4(0.25140405, 0.18578623, -0.1432535, -0.43420357, 0.0686446, -0.3685911, 0.35097942, -0.084426366, -0.10288644, -0.03958036, -0.052346278, -0.04481547, -0.18037266, -0.11130125, 0.2229475, 0.2770349) * go_1(1, 1);
    result += vec4(-0.016899236, 0.044592485, -0.19874378, 0.03671638);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x8
//!HOOK NATIVE
//!BIND conv2d_2_tf
//!SAVE conv2d_3_tf
//!WIDTH conv2d_2_tf.w
//!HEIGHT conv2d_2_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_2_tf_texOff(vec2(x_off, y_off))), 0))
#define go_1(x_off, y_off) (max(-(conv2d_2_tf_texOff(vec2(x_off, y_off))), 0))
vec4 hook() {
    vec4 result = mat4(0.81969404, 0.2259958, -0.116579056, -0.019086242, 0.16227795, -0.2839376, -0.34698325, 0.021791376, 0.13199468, -0.31292525, 0.0638172, -0.22587252, -0.022076698, -0.10945379, -0.26324978, -0.30002007) * go_0(-1, -1);
    result += mat4(0.3829972, 0.43988156, -0.18855287, -0.18739104, 0.09370083, -0.41933462, -0.78117985, 0.011125206, 0.20186399, 0.49379978, -0.25485387, -0.16699974, -0.20210716, 0.023104232, -0.26712552, -0.038565326) * go_0(-1, 0);
    result += mat4(0.07937464, 0.22404708, 0.024952505, -0.1483679, -0.042309023, 0.09325108, -0.23296708, -0.16417776, -0.35416654, 0.21643254, 0.46698183, -0.5028673, -0.022106364, 0.10933945, -0.3634904, 0.29891467) * go_0(-1, 1);
    result += mat4(0.15306325, -0.2595864, -0.37576714, 0.4350693, -0.019312112, -0.16025873, 0.02871505, -0.40203294, 0.1141544, -0.044116165, -0.040953685, -0.07319184, 0.18370758, 0.04518571, -0.25743952, -0.06082131) * go_0(0, -1);
    result += mat4(0.22195968, 0.9302182, -0.18685031, 0.12005473, -0.6267773, -0.33997935, 0.11086613, -0.5037063, 0.0875946, -0.24224971, -0.86707425, 0.47058558, -0.11273827, -0.516378, 0.13834807, -0.16725995) * go_0(0, 0);
    result += mat4(-0.16283579, 0.47527537, 0.19538571, -0.3472901, 0.03991967, -0.12923129, -0.02419047, 0.07397976, -0.4409862, -0.176196, -0.1518075, -0.11988912, 0.27343696, -0.22176346, 0.049010184, -0.13383265) * go_0(0, 1);
    result += mat4(-0.19753802, -0.20442182, -0.048092183, 0.23255053, 0.14160126, 0.34702694, -0.09304294, 0.32189912, -0.05425794, -0.13320518, -0.18809277, 0.0017980798, -0.18267103, 0.098500654, 0.040496502, -0.04724739) * go_0(1, -1);
    result += mat4(-0.58677596, 0.04244873, 0.3311744, 0.018053673, -0.25386629, 0.1329399, 0.13078088, -0.1776543, -0.15785156, 0.007480416, 0.11133869, -0.25406367, -0.046094187, 0.29749256, 0.41309783, -0.19419621) * go_0(1, 0);
    result += mat4(-0.31265658, 0.07729069, 0.37654263, 0.39387256, 0.10236004, 0.043869056, -0.06268937, -0.0063534616, 0.24971595, -0.10129612, 0.046381097, -0.2827642, 0.21108118, 0.009135906, 0.1837894, 0.102979414) * go_0(1, 1);
    result += mat4(-0.2695566, -0.20743763, 0.21606511, 0.09286589, -0.09100369, 0.026510142, -0.086544074, 0.25920168, -0.23312174, 0.06733019, 0.115502924, 0.2592431, 0.23714165, 0.2052901, 0.31896487, -0.073917314) * go_1(-1, -1);
    result += mat4(0.23633872, -0.078348696, 0.17909177, 0.06291586, 0.113754556, 0.47570094, 0.32298884, 0.24970187, -0.585712, -0.47733453, 0.356664, 0.002708236, 0.42726555, 0.25287828, 0.13389409, 0.15469214) * go_1(-1, 0);
    result += mat4(-0.06236717, -0.026267374, 0.15676485, -0.27417696, -0.10247907, -0.06435737, 0.17189996, 0.1280697, 0.1017788, -0.36373848, -0.17648734, 0.45625535, -0.001722651, -0.0007391427, 0.38517866, -0.34284356) * go_1(-1, 1);
    result += mat4(0.15634109, 0.1799742, 0.09503701, 0.24890146, -0.13117069, -0.096608214, 0.036583368, 0.3388618, -0.3963847, 0.3027823, 0.3925825, -0.07086919, 0.20254095, -0.12245532, 0.08205743, 0.81947565) * go_1(0, -1);
    result += mat4(-0.0022176383, -0.07185376, 0.48728743, -0.25647715, -0.10772351, -0.36381102, 0.4989113, -0.492923, 0.12042807, 0.30118042, 0.66742915, -0.17228839, 0.21779038, 0.05359273, -0.5821608, 0.485642) * go_1(0, 0);
    result += mat4(-0.10829938, 0.4044724, 0.3133904, 0.2624163, -0.042697556, 0.40911946, -0.100806914, 0.3452731, 0.56991446, -0.21960399, -0.08468817, 0.010777488, -0.29747286, 0.13020794, 0.12346292, -0.23431104) * go_1(0, 1);
    result += mat4(0.04806311, -0.29017672, -0.098884225, -0.14195554, -0.02775363, -0.15987985, -0.019444525, -0.1653336, -0.23508148, 0.19886784, 0.170628, 0.011901054, -0.4006586, -0.09799246, 0.30557385, -0.18952338) * go_1(1, -1);
    result += mat4(0.39662227, -0.06246749, -0.26832008, 0.18686867, 0.2157936, -0.20645466, -0.29780036, 0.109574415, -0.07424134, -0.047110096, 0.12827191, -0.089957155, 0.23684849, -0.0017975746, -0.045677673, 0.035506003) * go_1(1, 0);
    result += mat4(-0.056295585, -0.025270084, -0.3772951, 0.1925114, -0.17663698, -0.05735254, -0.05055262, 0.031992823, 0.03299394, 0.27189976, -0.03766075, -0.03739625, -0.13832736, -0.052844707, 0.009853764, 0.09196791) * go_1(1, 1);
    result += vec4(0.15460029, 0.033837568, -0.22027871, -0.022292966);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x8
//!HOOK NATIVE
//!BIND conv2d_3_tf
//!SAVE conv2d_4_tf
//!WIDTH conv2d_3_tf.w
//!HEIGHT conv2d_3_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_3_tf_texOff(vec2(x_off, y_off))), 0))
#define go_1(x_off, y_off) (max(-(conv2d_3_tf_texOff(vec2(x_off, y_off))), 0))
vec4 hook() {
    vec4 result = mat4(-0.064896844, -0.048048213, 0.06829927, -0.34860432, 0.24000928, -0.043854598, 0.120923, 0.23569539, -0.06245952, -0.16017795, 0.10259032, -0.28015694, 0.103704974, -0.12602988, 0.2829253, -0.005073853) * go_0(-1, -1);
    result += mat4(-0.15454209, -0.2705946, 0.11025609, 0.12420117, -0.29709455, 0.28099653, -0.10626175, -0.20911607, 0.44745442, -0.25056645, -0.35992387, 0.2829208, 0.6699154, -0.088204965, -0.032547448, 0.012738056) * go_0(-1, 0);
    result += mat4(0.39037573, -0.15766318, 0.011670663, 0.34617063, -0.1866692, 0.05871827, -0.00012018158, 0.0781857, -0.13059263, 0.026208252, 0.16054142, -0.1396945, -0.15939844, 0.28405648, 0.035694238, 0.0020376216) * go_0(-1, 1);
    result += mat4(-0.023391547, 0.31042823, -0.03533024, 0.17583148, -0.27726787, -0.3021984, -0.19279185, -0.097931005, -0.054658737, 0.5371991, 0.065942496, -0.21043669, -0.43620077, -0.041717336, 0.068729736, -0.009855061) * go_0(0, -1);
    result += mat4(-0.39070067, 0.376958, -0.16953428, -0.061234098, -0.47787425, -0.25922224, 0.03650775, -0.6632614, 0.07592094, -0.10600956, -0.6091704, 0.4791721, -0.22860715, -0.3988498, -0.3423004, 0.44213492) * go_0(0, 0);
    result += mat4(-0.08172636, -0.27405128, 0.1684177, 0.4431549, 0.1263824, -0.042244963, -0.060511556, 0.21185581, -0.080847874, -0.44046786, -0.095907524, -0.0049327975, -0.1379489, -0.0018489743, -0.44674814, -0.31186852) * go_0(0, 1);
    result += mat4(0.19214192, -0.053538352, 0.15875196, -0.047035843, -0.11632223, 0.41058254, 0.021203266, -0.054438826, 0.4030135, -0.23268524, 0.42148682, 0.4375409, -0.25204384, -0.01231161, 0.14221388, 0.3256891) * go_0(1, -1);
    result += mat4(0.10038795, 0.10753169, -0.022746684, 0.02399937, -0.07692804, -0.20378686, 0.1809128, 0.0019849215, 0.0957431, 0.62652403, 0.15950641, 0.09057225, -0.34480104, -0.16977717, -0.042311676, 0.06489763) * go_0(1, 0);
    result += mat4(0.066673346, 0.10365869, -0.053876583, -0.018512938, -0.26887202, -0.0057100016, 0.19864355, 0.40110323, 0.1862919, -0.22246762, 0.010158008, -0.31260484, 0.30458945, 0.004466403, -0.043510295, -0.1998622) * go_0(1, 1);
    result += mat4(0.20583129, -0.21024512, -0.20214254, 0.076511145, 0.18110004, -0.21773371, -0.39196944, -0.44423452, 0.12537998, 0.2122567, -0.16945904, 0.3311802, -0.11123909, 0.35572177, -0.1347748, -0.28635553) * go_1(-1, -1);
    result += mat4(0.47693783, -0.16944928, -0.023034528, -0.45286378, 0.8933531, -0.3808514, -0.22819468, 0.041636042, -0.5194903, 0.4324201, 0.32341805, -0.17156523, -0.3096273, 0.048253782, 0.082130365, -0.38701856) * go_1(-1, 0);
    result += mat4(-0.09878521, 0.082733214, -0.26349556, -0.66203135, 0.3358436, 0.038816616, -0.27770367, 0.19150186, 0.113920815, -0.05077774, -0.13363552, 0.034445357, 0.2410785, 0.056137323, -0.07695815, -0.27161562) * go_1(-1, 1);
    result += mat4(0.6322964, -0.107019626, 0.1826627, -1.0143086, 0.27504957, 0.24534048, 0.049823005, -0.1165638, 0.19502847, -0.63585603, -0.26099312, 0.218357, 0.20514148, 0.26530817, 0.19224046, -0.18836105) * go_1(0, -1);
    result += mat4(0.45239446, -0.46885324, -0.04762712, -0.33350477, 0.5663794, 0.08517987, -0.13364744, 0.1861617, -0.039213277, -0.08078955, 0.393329, -0.49902868, 0.5424446, 0.16810727, 0.2789055, -0.49045658) * go_1(0, 0);
    result += mat4(0.5228244, 0.27061045, -0.15568018, -0.5879792, 0.29759344, -0.5912985, -0.30622065, -0.22017258, -0.027590038, 0.6260479, 0.12106471, -0.37199646, 0.4073941, -0.12567511, 0.21173002, 0.23759973) * go_1(0, 1);
    result += mat4(-0.03043154, 0.030703714, -0.09510633, -0.35270488, 0.13931686, -0.10546609, 0.08456669, -0.0015922897, -0.29376268, 0.37520772, -0.2552171, -0.36798432, 0.18140854, 0.07522595, -0.03333175, -0.31674647) * go_1(1, -1);
    result += mat4(0.006707735, -0.0820798, -0.03239173, -0.17343313, 0.39110053, -0.031692557, -0.13526183, -0.06939489, -0.2687319, -0.707406, -0.3228202, -0.17707871, 0.70569104, -0.18288499, 0.30255702, -0.030220745) * go_1(1, 0);
    result += mat4(0.08312782, 0.03792005, -0.07877687, 0.009237053, 0.47034338, -0.18475355, -0.2336067, -0.54150075, -0.07717838, 0.4507103, -0.21046871, 0.29239818, -0.15822172, 0.09733225, 0.26987794, 0.15316072) * go_1(1, 1);
    result += vec4(0.10315713, 0.0040008845, -0.046915837, -0.05272877);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-4x3x3x8
//!HOOK NATIVE
//!BIND conv2d_4_tf
//!SAVE conv2d_5_tf
//!WIDTH conv2d_4_tf.w
//!HEIGHT conv2d_4_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_4_tf_texOff(vec2(x_off, y_off))), 0))
#define go_1(x_off, y_off) (max(-(conv2d_4_tf_texOff(vec2(x_off, y_off))), 0))
vec4 hook() {
    vec4 result = mat4(0.05892439, -0.118228324, 0.15795994, 0.12518603, -0.08522927, -0.40652576, 0.056199793, 0.25398546, 0.50994325, 0.23338404, 0.26326844, -0.14238234, 0.71994466, 0.15393208, 0.42608622, 0.32018986) * go_0(-1, -1);
    result += mat4(-0.16189265, -0.29597738, -0.064453326, -0.22645034, -0.4324196, -0.7648237, -0.14004135, -0.10381537, -0.033313103, 0.31907278, 0.07652508, -0.2295861, -0.40918258, -0.23589006, -0.04490375, -0.1837472) * go_0(-1, 0);
    result += mat4(0.24535523, 0.017211562, -0.28878194, 0.03315078, -0.20097718, -0.16244137, -0.66909486, 0.46277702, 0.26258388, 0.6747117, 0.005363142, -0.105367415, 0.15933459, -0.110886335, 0.1806415, 0.21773793) * go_0(-1, 1);
    result += mat4(-0.3046186, 0.36603102, -0.18110311, -0.036966812, 0.12649253, 0.210117, -0.2296021, 0.38066098, 0.057299208, 0.31319273, -0.03330661, 0.28432697, -0.34156066, 0.18398117, 0.5009921, -0.24893183) * go_0(0, -1);
    result += mat4(0.0015375417, 0.0010629474, 0.67865175, -0.38201353, -0.26995665, -0.5679511, 0.039008625, -0.32738483, 0.10282417, 0.2591304, 0.42194632, -0.22936182, 0.11928545, -0.6603334, -0.06269981, -0.6171907) * go_0(0, 0);
    result += mat4(0.028249417, -0.23167911, -0.16170621, -0.09576964, -0.2401198, -0.44739088, -0.18069863, 0.17320025, 0.24056779, 0.49485278, -0.019199045, -0.18834892, -0.14224932, 0.060810126, -0.2795203, 0.6875336) * go_0(0, 1);
    result += mat4(0.22010194, 0.024219988, 0.0659226, -0.07852324, 0.34062633, -0.4271167, 0.24511878, 0.52637994, 0.37312073, -0.39466736, -0.10622734, 0.07615617, 0.22540757, -0.088368416, 0.20561776, 0.20370041) * go_0(1, -1);
    result += mat4(0.32780775, 0.36140716, -0.29026693, 0.066057, -0.13670833, 0.01913034, -0.43298396, 0.55818397, -0.42553988, -0.12733395, -0.47155863, -0.07415997, 0.24954955, 0.07128345, 0.3988932, 0.3710898) * go_0(1, 0);
    result += mat4(0.36601087, -0.15433908, 0.38089225, -0.078167684, -0.3000978, -0.40670514, -0.35233685, 0.13059103, 0.43592525, 0.72977257, 0.0012881953, -0.061355725, -1.0601711, 0.24731396, 0.1662647, 1.0294207) * go_0(1, 1);
    result += mat4(-0.10444905, 0.054724243, 0.34079808, -0.24691373, 0.05672344, -0.24636231, -0.38311988, 0.0055462993, -0.13232547, -0.2958777, 0.14700988, 0.08486334, 0.08515884, 0.19571288, -0.20352891, 0.07378632) * go_1(-1, -1);
    result += mat4(0.19401646, 0.11556576, -0.22286715, -0.11740888, 0.122091934, 0.16661902, -0.46071905, 0.25548488, 0.2358595, 0.2139612, -0.18650518, 0.07707758, 0.1066139, 0.048763543, 0.4793624, -0.14859295) * go_1(-1, 0);
    result += mat4(-0.19752257, 0.024005825, 0.70880044, -0.4933879, -0.0025026782, 0.6996194, 0.002104403, 0.079254076, -0.060996894, -0.48224247, 0.33001915, 0.23196019, 0.00552491, 0.16424124, -0.11849227, -0.084667385) * go_1(-1, 1);
    result += mat4(0.16825052, -0.19513153, 0.09557034, -0.120184444, 0.0056509697, -0.20353775, 0.15749641, 0.044468388, -0.45544344, -0.3553834, 0.014722433, -0.2191328, -0.04267787, -0.03151353, 0.030390278, 0.082229465) * go_1(0, -1);
    result += mat4(0.8288821, -0.1868395, -0.7682503, 0.43409035, 0.15747, -0.116563626, -0.20999543, 0.15660869, 0.3676967, 0.37475684, -0.14846659, 0.08802886, 0.17418253, 0.45879388, 0.13413791, 0.16009448) * go_1(0, 0);
    result += mat4(-0.45580745, 0.25741455, -0.14757895, 0.40324432, -0.16393219, -0.11995727, -0.16552776, 0.16679645, -0.51556903, 0.06899023, -0.11517785, 0.046446048, 0.06329149, -0.08403248, 0.29566532, -0.17050189) * go_1(0, 1);
    result += mat4(-0.16479535, 0.014878225, 0.72165245, -0.16877812, 0.037212975, -0.13918386, 0.25502086, 0.037730742, 0.09691723, 0.2736944, -0.1636049, 0.03765064, 0.0887779, 0.034440577, 0.05174427, -0.19821544) * go_1(1, -1);
    result += mat4(-0.60731065, -0.24726996, 0.3058745, 0.20929444, -0.11657905, -0.106536046, -0.0627895, -0.08692624, 0.20846926, -0.3822026, 0.13242428, 0.018348835, -0.2667442, 0.1561439, -0.29097897, 0.09983701) * go_1(1, 0);
    result += mat4(-0.7872232, -0.28767422, -0.37942448, -0.39608213, -0.07250404, 0.18646985, -0.3045257, 0.13849543, -0.12424124, -0.4392238, 0.32263315, -0.004728055, -0.11675113, 0.20948963, -0.067513265, -0.09795672) * go_1(1, 1);
    result += vec4(-0.08944073, 0.019947939, -0.0028400617, 0.10361647);
    return result;
}
//!DESC Anime4K-v4.0-Line-Reconstruction-Heavy-(L)-Conv-Reduce
//!HOOK NATIVE
//!BIND HOOKED
//!BIND conv2d_tf
//!BIND conv2d_1_tf
//!BIND conv2d_2_tf
//!BIND conv2d_3_tf
//!BIND conv2d_4_tf
//!BIND conv2d_5_tf
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
#define g_0 (max((conv2d_tf_tex(conv2d_tf_pos)), 0))
#define g_1 (max(-(conv2d_tf_tex(conv2d_tf_pos)), 0))
#define g_2 (max((conv2d_1_tf_tex(conv2d_1_tf_pos)), 0))
#define g_3 (max(-(conv2d_1_tf_tex(conv2d_1_tf_pos)), 0))
#define g_4 (max((conv2d_2_tf_tex(conv2d_2_tf_pos)), 0))
#define g_5 (max(-(conv2d_2_tf_tex(conv2d_2_tf_pos)), 0))
#define g_6 (max((conv2d_3_tf_tex(conv2d_3_tf_pos)), 0))
#define g_7 (max(-(conv2d_3_tf_tex(conv2d_3_tf_pos)), 0))
#define g_8 (max((conv2d_4_tf_tex(conv2d_4_tf_pos)), 0))
#define g_9 (max(-(conv2d_4_tf_tex(conv2d_4_tf_pos)), 0))
#define g_10 (max((conv2d_5_tf_tex(conv2d_5_tf_pos)), 0))
#define g_11 (max(-(conv2d_5_tf_tex(conv2d_5_tf_pos)), 0))
vec4 hook() {
    vec4 result = mat4(0.07950079, 0.0, 0.0, 0.0, -0.044770658, 0.0, 0.0, 0.0, 0.030442705, 0.0, 0.0, 0.0, -0.03210138, 0.0, 0.0, 0.0) * g_0;
    result += mat4(-0.07165851, 0.0, 0.0, 0.0, 0.04374435, 0.0, 0.0, 0.0, -0.013163396, 0.0, 0.0, 0.0, 0.0072550834, 0.0, 0.0, 0.0) * g_1;
    result += mat4(-0.1024898, 0.0, 0.0, 0.0, -0.0328877, 0.0, 0.0, 0.0, -0.116823934, 0.0, 0.0, 0.0, -0.037526697, 0.0, 0.0, 0.0) * g_2;
    result += mat4(0.14841424, 0.0, 0.0, 0.0, -0.010720607, 0.0, 0.0, 0.0, 0.14283967, 0.0, 0.0, 0.0, 0.06405954, 0.0, 0.0, 0.0) * g_3;
    result += mat4(0.08395108, 0.0, 0.0, 0.0, -0.06296518, 0.0, 0.0, 0.0, -0.039951723, 0.0, 0.0, 0.0, 0.06204123, 0.0, 0.0, 0.0) * g_4;
    result += mat4(-0.02027919, 0.0, 0.0, 0.0, 0.11857602, 0.0, 0.0, 0.0, 0.03228388, 0.0, 0.0, 0.0, -0.06185276, 0.0, 0.0, 0.0) * g_5;
    result += mat4(0.004373086, 0.0, 0.0, 0.0, 0.013816933, 0.0, 0.0, 0.0, -0.05569976, 0.0, 0.0, 0.0, -0.027066793, 0.0, 0.0, 0.0) * g_6;
    result += mat4(0.031680465, 0.0, 0.0, 0.0, -0.033278752, 0.0, 0.0, 0.0, 0.012976385, 0.0, 0.0, 0.0, 0.0151834395, 0.0, 0.0, 0.0) * g_7;
    result += mat4(0.009973182, 0.0, 0.0, 0.0, 0.014861056, 0.0, 0.0, 0.0, 0.112328075, 0.0, 0.0, 0.0, 0.08116026, 0.0, 0.0, 0.0) * g_8;
    result += mat4(-0.09550135, 0.0, 0.0, 0.0, 0.042691775, 0.0, 0.0, 0.0, -0.022551697, 0.0, 0.0, 0.0, 0.00042044267, 0.0, 0.0, 0.0) * g_9;
    result += mat4(-0.0022986594, 0.0, 0.0, 0.0, -0.002746357, 0.0, 0.0, 0.0, -0.011840669, 0.0, 0.0, 0.0, -0.07408628, 0.0, 0.0, 0.0) * g_10;
    result += mat4(0.05689489, 0.0, 0.0, 0.0, 0.060372334, 0.0, 0.0, 0.0, -0.05400069, 0.0, 0.0, 0.0, -0.027894977, 0.0, 0.0, 0.0) * g_11;
    result += vec4(-1.7599104e-05, 0.0, 0.0, 0.0);
    return result + HOOKED_tex(HOOKED_pos);
}