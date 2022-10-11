<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="admission.css">
<!------ Include the above in your HEAD tag ---------->

<!-- Name Section -->
<div class="row">
  <div class="col-md-8 col-md-offset-1">
    <form class="form-horizontal" role="form">
      <fieldset>

        <!-- Form Name -->
        <legend>Personal Information Details</legend>

        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-3">
            <input type="text" name="fistName" placeholder="First Name" class="form-control">
          </div>
          <div class="col-sm-2">
            <input type="text" name="middleName" placeholder="Middle Name" class="form-control">
          </div>
          <div class="col-sm-3">
            <input type="text" name="lastName" placeholder="Last Name" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <H5>Class:&nbsp;&nbsp;&nbsp;</H5>
                </td>
                <td> <select name="class" class="form-control">
                    <option value="">Select Class Name</option>
                    <option value="1">FYBA</option>
                    <option value="2">FYBA(N.G)</option>
                    <option value="3">FYBBA</option>
                    <option value="4">FYBBA (C.A.)</option>
                    <option value="5">FYBCA(SCI)</option>
                    <option value="6">FYBCOM</option>
                    <option value="7">FYBSC</option>
                    <option value="8">FYBSc Micro/Env</option>
                    <option value="9">FYBSc Animation</option>
                    <option value="11">FYBSc Winetechnology</option>
                    <option value="12">FYBSC(BIOTECH)</option>
                    <option value="13">FYBSC COMPUTER SCIENCE</option>
                    <option value="16">MA/MSC Communication Studies-I</option>
                    <option value="17">MA/MSC Communication Studies-II</option>
                    <option value="18">MA-I-ECO</option>
                    <option value="19">MA-I-ENG</option>
                    <option value="20">MA-I-GEO</option>
                    <option value="21">MA-I-HINDI</option>
                    <option value="22">MA-I-HIST</option>
                    <option value="23">MA-II-ECO</option>
                    <option value="24">MA-II-ENG</option>
                    <option value="25">MA-II-GEO</option>
                    <option value="26">MA-II-HINDI</option>
                    <option value="27">MA-II-HIST</option>
                    <option value="28">MA-II-MAR</option>
                    <option value="29">MA-II-POLITICS</option>
                    <option value="30">MA-II-PSY</option>
                    <option value="31">MA-II-SOCIOLOGY</option>
                    <option value="32">MA-I-MAR</option>
                    <option value="33">MA-I-POLITICS</option>
                    <option value="34">MA-I-PSY</option>
                    <option value="35">MA-I-SOCIOLOGY</option>
                    <option value="42">MCOM-I</option>
                    <option value="43">MCOM-II</option>
                    <option value="44">MSc COMPUTER SCIENCE-I</option>
                    <option value="45">MSc COMPUTER SCIENCE-II</option>
                    <option value="46">MSC- I ELECT</option>
                    <option value="47">MSC- II ELECT</option>
                    <option value="48">MSc Phy- I</option>
                    <option value="49">MSc Phy- II</option>
                    <option value="50">MSC(ENV.SCI.)-I</option>
                    <option value="51">MSC(ENV.SCI.)-II</option>
                    <option value="52">MSC-I-BIOTECH</option>
                    <option value="53">MSC-I-BOTANY</option>
                    <option value="54">MSC-I-CHE(ANL)</option>
                    <option value="59">MSC-II-BIOTECH</option>
                    <option value="60">MSC-II-BOTANY</option>
                    <option value="61">MSC-II-CHE(ANL)</option>
                    <option value="62">MSC-II-CHE(BIO)</option>
                    <option value="63">MSC-II-CHE(DRUG)</option>
                    <option value="64">MSC-II-CHE(INO)</option>
                    <option value="65">MSC-II-CHE(ORG)</option>
                    <option value="66">MSC-II-MATH</option>
                    <option value="67">MSC-II-MICRO</option>
                    <option value="68">MSC-II-STAT</option>
                    <option value="69">MSC-II-ZOOLOGY</option>
                    <option value="70">MSC-I-MATH</option>
                    <option value="71">MSC-I-MICRO</option>
                    <option value="72">MSC-I-STAT</option>
                    <option value="73">MSC-I-ZOOLOGY</option>
                    <option value="74">SYBA</option>
                    <option value="75">SYBBA</option>
                    <option value="76">SYBBA (C.A.)</option>
                    <option value="77">SYBCA(SCI)</option>
                    <option value="78">SYBCOM</option>
                    <option value="79">SYBSC</option>
                    <option value="80">SYBSc Micro/Env</option>
                    <option value="81">SYBsc Animation</option>
                    <option value="83">SYBSC Winetechnology</option>
                    <option value="84">SYBSC(BIOTECH)</option>
                    <option value="85">SYBSC COMPUTER SCIENCE</option>
                    <option value="87">TYBA</option>
                    <option value="88">TYBBA</option>
                    <option value="89">TYBBA(CA)</option>
                    <option value="90">TYBCOM</option>
                    <option value="91">TYBSC</option>
                    <option value="92">TYBSC Animation</option>
                    <option value="93">TYBSC ENV.SCI</option>
                    <option value="94">TYBSC Winetechnology</option>
                    <option value="95">TYBSC(BIOTECH)</option>
                    <option value="96">TYBSC COMPUTER SCIENCE</option>
                    <option value="97">TYBSC(MICRO)</option>
                    <option value="98">TYBCA(Sci)</option>
                    <option value="99">TYBSC Zoology</option>
                    <option value="100">TYBSC Electronics</option>
                    <option value="101">TYBSC Physics</option>
                    <option value="102">TYBSC Chemistry</option>
                    <option value="103">TYBSC Botany</option>
                    <option value="104">TYBSC Stat</option>
                    <option value="105">TYBSC Math</option>
                    <option value="107">FY BVOC PRINTING TECHNOLOGY</option>
                    <option value="108">Certificate Course in Digital Film Technology </option>
                    <option value="109">Diploma in Digital Film Technology</option>
                    <option value="110">Advance Diploma in Digital Film Technology</option>
                    <option value="111">SY BVOC PRINTING TECHNOLOGY </option>
                    <option value="112">MSc (ComputerApplication) I</option>
                    <option value="115">M.Sc Computer Application II</option>
                    <option value="116">TY BVOC PRINTING TECHNOLOGY</option>
                    <option value="117">XI Arts</option>
                    <option value="119">XII Arts</option>
                    <option value="121">XI Commerce</option>
                    <option value="122">XI Commerce (NG)</option>
                    <option value="123">XII Commerce</option>
                    <option value="124">XII Commerce (NG)</option>
                    <option value="125">XI Science</option>
                    <option value="126">XI Science (NG)</option>
                    <option value="127">XII Science</option>
                    <option value="128">XII Science (NG)</option>
                    <option value="129">XI Accounting and office Management</option>
                    <option value="130">XII Accounting and office Management</option>
                    <option value="131">XI Marketing and Retail Management</option>
                    <option value="132">XII Marketing and Retail Management</option>
                    <option value="133">XI FOOD Production Technology</option>
                    <option value="134">XII FOOD Production Technology</option>
                    <option value="137">MSC-I-CHE(BIO)</option>
                    <option value="138">MSC-I-CHE(DRUG)</option>
                    <option value="139">MSC-I-CHE(INO)</option>
                    <option value="140">MSC-I-CHE(ORG)</option>
                    <option value="141">Ph D Arts I</option>
                    <option value="142">Ph D Arts II</option>
                    <option value="143">Ph D Arts III</option>
                    <option value="144">Ph D Arts IV</option>
                    <option value="145">Ph D Arts V</option>
                    <option value="146">Ph D Comm I</option>
                    <option value="147">Ph D Comm II</option>
                    <option value="148">Ph D Comm III</option>
                    <option value="149">Ph D Comm IV</option>
                    <option value="150">Ph D Comm V</option>
                    <option value="151">Ph D Sci I</option>
                    <option value="152">Ph D Sci II</option>
                    <option value="153">Ph D Sci III</option>
                    <option value="154">Ph D Sci IV</option>
                    <option value="155">Ph D Sci V</option>
                    <option value="156">Foreign Language Fee</option>
                    <option value="158">BVOC JOURNALISM &amp; MASS COMMUNICATION</option>
                  </select>

                </td>
              </tr>
            </table>
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <h5>Date Of Birth:</h5>
                </td>
                <td>&nbsp;&nbsp;</td>
                <td><input type="date" placeholder="Date Of Birth" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>

        <table class="nationality ">
          <tr>
            <td>
              <h5>Nationality:&nbsp;&nbsp;</h5>
            </td>
            <td><input type="radio" name="nationality" value="indian">&nbsp;</td>
            <td>
              <H5>Indian&nbsp;&nbsp;</H5>
            </td>
            <td><input type="radio" name="nationality" value="NRI">&nbsp;</td>
            <td>
              <h5>NRI</h5>
            </td>
          </tr>
        </table>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-5  ">
            <table>
              <tr>
                <td>
                  <H5>Gender:&nbsp;&nbsp;&nbsp;</H5>
                </td>
                <td> <select type="gender" placeholder="Gender" class="form-control">
                    <option value="female">Female</option>
                    <option value="male">Male</option>
                  </select></td>
              </tr>
            </table>
          </div>
        </div>
        
        <table class="status" id="mst">
          <tr>
            <td>
              <h5>Maritial Status:&nbsp;&nbsp;</h5>
            </td>
            <td><input type="radio" name="mstatus" value="Married">&nbsp;</td>
            <td>
              <H5>Married&nbsp;&nbsp;</H5>
            </td>
            <td><input type="radio" name="mstatus" value="Unmarried">&nbsp;</td>
            <td>
              <h5>Unmarried</h5>
            </td>
          </tr>
        </table>
        <div class="form-group">
          <div class="col-sm-7">
            <table>
              <tr>
                <td>
                  <h5>Blood Group:&nbsp;&nbsp;</h5>
                </td>
                <td><input type="text" name="bloodgroup" id="" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>
        

        
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <h5>Email:&nbsp;&nbsp;</h5>
                </td>
                <td><input type="email" name="emid" id="" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <h5>Addhar No:&nbsp;&nbsp;</h5>
                </td>
                <td><input type="number" name="adhar" id="" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <h5>Contact No:&nbsp;&nbsp;</h5>
                </td>
                <td><input type="number" name="adhar" id="" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>
        
        <legend>Provide your cast details</legend>
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <H5>Religion:&nbsp;&nbsp;&nbsp;</H5>
                </td>
                <td>
                  <input type="text" name="religion" class="form-control" id="">
                </td>
              </tr>
            </table>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <H5>Cast:&nbsp;&nbsp;&nbsp;</H5>
                  </td>
                <td>
                  <select name="cast" id="cast" class="form-control">
                    <option value="">--- Select Caste Name---</option>
                    <option value="1">Agarwal</option>
                    <option value="2">Bangoli</option>
                    <option value="3">Bhamata-Pardeshi</option>
                    <option value="4">Bopchi</option>
                    <option value="5">Brahmin</option>
                    <option value="6">Catholic</option>
                    <option value="7">Christen</option>
                    <option value="8">Dusad</option>
                    <option value="9">Gaderia</option>
                    <option value="10">Gadhvi</option>
                    <option value="11">Gaula</option>
                    <option value="12">Gavra Naydu</option>
                    <option value="13">Gujar</option>
                    <option value="14">Gujrati</option>
                    <option value="15">Halwai</option>
                    <option value="16">Islam</option>
                    <option value="17">Jain</option>
                    <option value="18">Jain Maheshwari</option>
                    <option value="19">Jain Marwadi</option>
                    <option value="20">Jain Shimpi</option>
                    <option value="21">Jat</option>
                    <option value="22">Kalar</option>
                    <option value="23">Kaysta</option>
                    <option value="24">Khandelwal</option>
                    <option value="25">Khatri</option>
                    <option value="26">Kisan</option>
                    <option value="27">Kohiri</option>
                    <option value="28">Komati</option>
                    <option value="29">Kristen</option>
                    <option value="30">Kshatriya</option>
                    <option value="31">Kulwant Wani</option>
                    <option value="32">Kurni</option>
                    <option value="33">Lad Wani</option>
                    <option value="34">Lingayat</option>
                    <option value="35">Lingayat Banagar</option>
                    <option value="36">Lingayat Vani</option>
                    <option value="37">Lingayat Wani</option>
                    <option value="38">Madrasi</option>
                    <option value="39">Maheshwari</option>
                    <option value="40">Maniyar</option>
                    <option value="41">Maratha</option>
                    <option value="42">Marwadi</option>
                    <option value="43">Monin Julaha</option>
                    <option value="44">Muslim</option>
                    <option value="45">Nair</option>
                    <option value="46">Nepali</option>
                    <option value="47">Nisad</option>
                    <option value="48">Oriya</option>
                    <option value="49">Panjabi</option>
                    <option value="50">Patedar</option>
                    <option value="51">Punjabi</option>
                    <option value="52">Rajastani</option>
                    <option value="53">Rajput</option>
                    <option value="54">Rathod</option>
                    <option value="55">Shikh</option>
                    <option value="56">Shrivastav</option>
                    <option value="57">Sindhi</option>
                    <option value="58">Talwar</option>
                    <option value="59">Telgu</option>
                    <option value="60">Vaishnav</option>
                    <option value="61">Vaisya Vani</option>
                    <option value="62">Yadav</option>
                    <option value="63">Aagari</option>
                    <option value="64">Attar (Muslim)</option>
                    <option value="65">Badgujar</option>
                    <option value="66">Bagwan</option>
                    <option value="67">Barbar</option>
                    <option value="68">Bari</option>
                    <option value="69">Bedha Jagam</option>
                    <option value="70">Bhavsar</option>
                    <option value="71">Bhujva</option>
                    <option value="72">Dhobi</option>
                    <option value="73">F. Bandarvala</option>
                    <option value="74">Ful Mali</option>
                    <option value="75">Fulari</option>
                    <option value="76">Fulmudi</option>
                    <option value="77">Gavandi</option>
                    <option value="78">Gawali</option>
                    <option value="79">Ghadashi</option>
                    <option value="80">Gold Smit</option>
                    <option value="81">Gurav</option>
                    <option value="82">Guruv</option>
                    <option value="83">Hatkar</option>
                    <option value="84">Jangam</option>
                    <option value="85">Javheri</option>
                    <option value="86">Jungam</option>
                    <option value="87">Kamati</option>
                    <option value="88">Kandu</option>
                    <option value="89">Kasai</option>
                    <option value="90">Kasar</option>
                    <option value="91">Kumbhar</option>
                    <option value="92">Kunbi</option>
                    <option value="93">Kunbi</option>
                    <option value="94">Kurhinshetty</option>
                    <option value="95">L.L. Patidar</option>
                    <option value="96">Lad Sonar</option>
                    <option value="97">Lakhari</option>
                    <option value="98">Leva Gujar</option>
                    <option value="99">Leva Patidar</option>
                    <option value="100">Leva Patil</option>
                    <option value="101">Lingayat Gawali</option>
                    <option value="102">Lingayat Mali</option>
                    <option value="103">Lohar</option>
                    <option value="104">Lonari</option>
                    <option value="105">Mali</option>
                    <option value="106">Marwadi Nhavi</option>
                    <option value="107">Momin</option>
                    <option value="108">Mujavar</option>
                    <option value="109">Mulani</option>
                    <option value="110">Namdev Shimpi</option>
                    <option value="111">Nhavi</option>
                    <option value="112">Nirali</option>
                    <option value="113">Nirhali</option>
                    <option value="114">Panchal</option>
                    <option value="115">Pardeshi</option>
                    <option value="116">Parit</option>
                    <option value="117">Patil</option>
                    <option value="118">Patkar</option>
                    <option value="119">Pinjar</option>
                    <option value="120">Rangari</option>
                    <option value="121">Sen</option>
                    <option value="122">Shimpi</option>
                    <option value="123">Sonar</option>
                    <option value="124">Sutar</option>
                    <option value="125">Swakul Sali</option>
                    <option value="126">Talvar Kanadi</option>
                    <option value="127">Tambat</option>
                    <option value="128">Tamboli</option>
                    <option value="129">Teli</option>
                    <option value="130">Togati</option>
                    <option value="131">Vjnt</option>
                    <option value="132">Wani</option>
                    <option value="133">Yalam</option>
                    <option value="134">Bhandari</option>
                    <option value="135">Devang Koshti</option>
                    <option value="136">Halba-Kosti</option>
                    <option value="137">Koli</option>
                    <option value="138">Ligayat Koshti</option>
                    <option value="139">Lingayat Koshti</option>
                    <option value="140">Padmasali</option>
                    <option value="141">Sali</option>
                    <option value="142">Ahirwar</option>
                    <option value="143">Balmiki</option>
                    <option value="144">Beda Jungum</option>
                    <option value="145">Bedar</option>
                    <option value="146">Bhamata Rajput</option>
                    <option value="147">Bhangi</option>
                    <option value="148">Boudha</option>
                    <option value="149">Burud</option>
                    <option value="150">Burude</option>
                    <option value="151">Chalwadi</option>
                    <option value="152">Chamar</option>
                    <option value="153">Chambhar</option>
                    <option value="154">Chamgar</option>
                    <option value="155">Chamiri</option>
                    <option value="156">Dhor</option>
                    <option value="157">Dhour</option>
                    <option value="158">Gangam</option>
                    <option value="159">Garudi</option>
                    <option value="160">Holar</option>
                    <option value="161">Jatav</option>
                    <option value="162">Khangar</option>
                    <option value="163">Khatik</option>
                    <option value="164">Kori</option>
                    <option value="165">Lingader</option>
                    <option value="166">Machigar</option>
                    <option value="167">Madari</option>
                    <option value="168">Mahar</option>
                    <option value="169">Mahar</option>
                    <option value="170">Mala Jangam</option>
                    <option value="171">Mang</option>
                    <option value="172">Mang</option>
                    <option value="173">Mang-Garudi</option>
                    <option value="174">Matang</option>
                    <option value="175">Mehetar</option>
                    <option value="176">Mochi</option>
                    <option value="177">Mochigar</option>
                    <option value="178">Nav Boudh</option>
                    <option value="179">Pasi</option>
                    <option value="180">Walmiki</option>
                    <option value="181">Andh</option>
                    <option value="182">Bhill</option>
                    <option value="183">Chakhesang</option>
                    <option value="184">Fas Paradhi</option>
                    <option value="185">Gond</option>
                    <option value="186">Goud</option>
                    <option value="187">Halaba</option>
                    <option value="188">Halba</option>
                    <option value="189">Kokani</option>
                    <option value="190">Koshti</option>
                    <option value="191">M. Koli</option>
                    <option value="192">Mahadeo Koli</option>
                    <option value="193">Mahadev Koli</option>
                    <option value="194">Mannerwarlu</option>
                    <option value="195">Mannewar</option>
                    <option value="196">Mavachi</option>
                    <option value="197">Munnervarlu</option>
                    <option value="198">Paradhi</option>
                    <option value="199">Pardhan</option>
                    <option value="200">Thakar</option>
                    <option value="201">Thakur</option>
                    <option value="202">Tokare Koli</option>
                    <option value="203">Banjara</option>
                    <option value="204">Berad</option>
                    <option value="205">Bhatki</option>
                    <option value="206">Chappar Bandar</option>
                    <option value="207">Chhaparband</option>
                    <option value="208">Ckp</option>
                    <option value="209">Gadi Vadar</option>
                    <option value="210">Kahar</option>
                    <option value="211">Kaikadi</option>
                    <option value="212">Kanjar Bhat</option>
                    <option value="213">Kashi Kapdi Kunkuwale</option>
                    <option value="214">Katabhau</option>
                    <option value="215">Kevat</option>
                    <option value="216">Laman</option>
                    <option value="217">Mairad</option>
                    <option value="218">Nawadi</option>
                    <option value="219">Pal Paradhi</option>
                    <option value="220">Pardeshi Bhambata</option>
                    <option value="221">Raj Paradhi</option>
                    <option value="222">Raj. Bhambata</option>
                    <option value="223">Ramoshi</option>
                    <option value="224">Sangar</option>
                    <option value="225">Shegar</option>
                    <option value="226">Takari</option>
                    <option value="227">Tirmali</option>
                    <option value="228">Ttakari</option>
                    <option value="229">Vadar</option>
                    <option value="230">Vadari</option>
                    <option value="231">Vaghri</option>
                    <option value="232">Zinga Bhui</option>
                    <option value="233">Bairagi</option>
                    <option value="234">Bava</option>
                    <option value="235">Beldar</option>
                    <option value="236">Bharadi</option>
                    <option value="237">Bharati Gosavi</option>
                    <option value="238">Bhavrupi</option>
                    <option value="239">Bhoi</option>
                    <option value="240">Bhute</option>
                    <option value="241">Chitrakathi</option>
                    <option value="242">Dangat</option>
                    <option value="243">Dombari</option>
                    <option value="244">Gadi Lohar</option>
                    <option value="245">Garudi</option>
                    <option value="246">Geri Gosavi</option>
                    <option value="247">Ghisadi</option>
                    <option value="248">Golla</option>
                    <option value="249">Gondhali</option>
                    <option value="250">Gopal</option>
                    <option value="251">Gopal Bhorapi</option>
                    <option value="252">Gosavi</option>
                    <option value="253">Helve</option>
                    <option value="254">Jogi</option>
                    <option value="255">Joshi</option>
                    <option value="256">Kashi Kapadi</option>
                    <option value="257">Kolhati</option>
                    <option value="258">L</option>
                    <option value="259">L</option>
                    <option value="260">Lohar</option>
                    <option value="261">Nandiwale</option>
                    <option value="262">Nd Gosavi</option>
                    <option value="263">Otari</option>
                    <option value="264">Pangul</option>
                    <option value="265">Raul</option>
                    <option value="266">Raval</option>
                    <option value="267">Rawal</option>
                    <option value="268">Sikkalgar</option>
                    <option value="269">Thelari</option>
                    <option value="270">Vaidu</option>
                    <option value="271">Dhangar</option>
                    <option value="272">Gadaria</option>
                    <option value="273">Naydu</option>
                    <option value="274">Vanjar</option>
                    <option value="275">Vanjara</option>
                    <option value="276">Vanjari</option>
                    <option value="277">Vasudev</option>
                    <option value="278">NA</option>
                    <option value="279">christian</option>
                    <option value="280">SEBC</option>
                  </select>
                </td>
              </tr>
            </table>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <H5>Category:&nbsp;&nbsp;&nbsp;</H5>
                </td>
                <td> <select name="cast_category" id="cast_category" class="form-control">
                    <option value="">--- select cast category ---</option>
                    <option value="1">OPEN</option>
                    <option value="2">OBC</option>
                    <option value="3">SBC</option>
                    <option value="4">SC</option>
                    <option value="5">ST</option>
                    <option value="6">NT-A</option>
                    <option value="7">NT-B</option>
                    <option value="8">NT-C</option>
                    <option value="9">NT-D</option>
                  </select></td>
              </tr>
            </table>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-sm-4">
            <table>
              <tr>
                <td>
                  <H5>Sub-Cast:&nbsp;&nbsp;&nbsp;</H5>
                </td>
                <td>
                  <input type="text" name="subcast" class="form-control" id="">
                </td>
              </tr>
            </table>
          </div>
        </div>
        <!-- <div class="form-group"> -->
        <!-- <div class="col-sm-4"> -->
        <!-- <input type="checkbox" name="hasSibling" data-toggle="modal" data-target="#sibling">   Has Sibling? -->
        <!-- </div> -->
        <!-- </div> -->

        <!-- Address Section -->
        <!-- Form Name -->
        <legend>Address Details</legend>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-10">
            <input type="text" name="addressLine1" placeholder="Address Line 1" class="form-control">
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-10">
            <input type="text" name="addressLine2" placeholder="Address Line 2" class="form-control">
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-4">
            <input type="text" name="city" placeholder="City" class="form-control">
          </div>
          <div class="col-sm-2">
            <input type="text" name="state" placeholder="State" class="form-control">
          </div>
          <div class="col-sm-4">
            <input type="text" name="postalCode" placeholder="Post Code" class="form-control">
          </div>
        </div>
        <!-- Parent/Guadian Contact Section -->
        <!-- Form Name -->
        <legend>Parent/Guadian Information</legend>
        <!-- Text input-->
        <div class="form-group">
          <div class="col-sm-4">
            <input type="text" name="pFistName" placeholder="First Name" class="form-control">
          </div>
          <div class="col-sm-2">
            <input type="text" name="pMiddleName" placeholder="Middle Name" class="form-control">
          </div>
          <div class="col-sm-4">
            <input type="text" name="pLastName" placeholder="Last Name" class="form-control">
          </div>
        </div>
        <div class="form-group">
          <!-- <div class="col-sm-2">
            <select type="pContactMethod" placeholder="Contact Method" class="form-control">
              <option>Contact Method</option>
              <option value="phone">Phone</option>
              <option value="text">Text</option>
              <option value="email">Email</option>
            </select>
          </div> -->
          <div class="col-sm-4">
            <input type="pPhoneNbr" placeholder="Phone Number" class="form-control">
          </div>
          <div class="col-sm-4">
            <input type="email" name="pEmail" placeholder="Email" class="form-control">
          </div>
        </div>
        <!-- <div class="modal-footer ">
          <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" aria-hidden="true"
            style="width: 30%;">Done</button>
        </div> -->
           <!-- Command -->
           <div class="form-group">
            <div class="col-sm-5 col-sm-offset-1">
              <div class="pull-right">
                <button type="submit" name=bt1 class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

           
          </form>
   

