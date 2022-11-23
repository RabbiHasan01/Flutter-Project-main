import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Textual extends StatefulWidget {
  final String situationName, category;
  const Textual(this.situationName, this.category);

  @override
  State<Textual> createState() => _TextualState();
}

class _TextualState extends State<Textual> {
  Widget? viewText(String? stName, String? substName) {
    if (stName == "Choking" && substName == "Adult/Child") {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '1. Ask the victim, Are you Choking?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: "Font1",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2. Encourage the casuality to cough.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '3. If they cannot clear the object themselves, support them with one hand while learning them forwards:\n\n',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '\t(i) Give up to five back blows between shoulder blades.\n\n(ii) Ckeck  their mouth.\n\n',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4. if unsuccessful, try up to five abdominal thrusts:\n\n',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '\t(i) Stand behind the casualty and link your hands below their cage with the lower hand clenched in a fist. Pull sharply inwards and upwards.\n\n(ii) Check there mouth.\n\n',
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: <Widget>[
                                Text('5. Still choking? Dial ',
                                    style: TextStyle(
                                      fontSize: 28,
                                    )),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '112',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch('tel:112');
                                            },
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          )),
                                    ],
                                  ),
                                ),
                                Text('/',
                                    style: TextStyle(
                                      fontSize: 28,
                                    )),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '999',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              launch('tel:999');
                                            },
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          )),
                                    ],
                                  ),
                                ),
                                Text(' for the emergency servies.',
                                    style: TextStyle(
                                      fontSize: 28,
                                    ))
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '6. Repeat steps 3 and 4, checking the mouth after each step untill thr hrlp arrives.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    } else if (stName == "Choking" && substName == "Infant") {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                  'Never use abdominal thrusts on an infant.',
                                  speed: Duration(milliseconds: 100),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '1. Lay the infant face down on your thigh while supporting their head.\ngive the infant up to five back blows',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\n2. Turn the infant over so they are lying on your other thigh and checktheir mouth obious obstructions (donot do a blind finger sweep). If chocking persists, try up to five chest thrusts.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            '\n\n3. Place two fingers on the breastbone, one finger breath  below the nipple line and push downwards.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '\n4. Check the mouth of victim.\n',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5. If the obstruction has not cleared, dial 999/112 for emergency help using your mobile phone. Taking the infant with you if necessary.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    } else if (stName == "Acid Attack") {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              '1. It is important to report the crime and call 999 immediately.',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '2. You should swiftly and very carefully remove contaminated clothing or jewellery.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '3. Then, you should rinse the affected skin under copious amounts of running water .',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '4. You should give priority to flushing the eyes and face (and the airway if affected) first.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '5. A bottle of water is insufficient. You will need a lot of water, ideally from a tap, hosepipe or shower.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '6. Use tap or bottled water. Or, wherever possible, use Hartmann’s or Normal Saline solutions.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '7. Paramedics should then  transport the victims to hospital as soon as possible.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ));
    } else if (stName == "Burns" && substName == "Face/Mouth") {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: new Container(
          child: new Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            '1. Check for danger',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2. Dial 999/112 for an ambulance and tell them  you suspect burns  to the airways.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '3. Maintain the airway, loosening clothing around the casualty\'s neck if needed.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4. Give the casualty ice or sips of cold water to relieve the pain and any swelling.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5. Monitor the casualty continuously as any injury may cause deffulty in breathing.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    } else if (stName == "Burns" && substName == "Important Information") {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('When treating burns: ',
                                  speed: Duration(milliseconds: 200),
                                  textStyle: TextStyle(
                                      fontSize: 28,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '1.\tDo not remove anything that is sticking to the burn.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2.\tDo not over cool the casualty as there is risk to lowering their body tempurature too much. ',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '3.\tDo not use lotions, ointments or creams',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4.\tDo not use adhesive dressings.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '5.\tDo not break blisters.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
    } else if (stName == "Burns" && substName == "Chemical-body/eyes") {
      return Padding(
          padding: const EdgeInsets.all(15.0),
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'For body:',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Douse the burn with cool or lukewarm running water until the ambulance arrives.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'As you pour cold water over the burn, carefully remove any contaminated clothing.',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'For eyes:',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Irrigate under cool or lukewarm running water until the ambulance   arrives. Including both sides of the eyelids when irrigating. Ask the casualry to reemove contact lenses if they can.\n\nEnsure that water drains away from the face. ',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ));
    } else if (stName == "Head Injury" && substName == "General Warning") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'Head injury may result in concussion or or compression, with or without a fractured skull:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Concussion is a mild injury to the brain, usually resulting in a full recovery. ',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Compression describes a bleed or swelling in the head which requires urgent medical attention.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'With all head injuries:',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '1. Always assume that any casualty with a head injury may also have a neck injury.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '2. Check the casualty\'s level of response by asking simple questions',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '3. Anyone who has suffered a blow to the head that results in a loss of responsiveness must see a heathcare professional.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Head Injury" && substName == "Recognition") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          iconColor: Colors.green,
                          // ignore: prefer_const_constructors
                          leading: Icon(Icons.add_to_photos),
                          title: Text(
                            'Concussion',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'May have some or all of the following: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(i) General blow to the head.\n\n(ii) General Headache.\n\n(iii) Impaired or becoming unresponsive.\n\n(iv) Dizziness on recovery.\n\n(v) Memory loss.\n\n(vi) Confusion.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          iconColor: Colors.green,
                          // ignore: prefer_const_constructors
                          leading: Icon(Icons.add_to_photos),
                          title: Text(
                            'Compression',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'May have some or all of the following:',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(i) Recent blow to head.\n\n(ii) intanse and increasing headache.\n\n(iii) Becoming unresponsive.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(iv) Poor response.\n\n(v) Confusion.\n\n(vi) Slow, noisy breathing.\n\n(vii) Slow, strong pulse.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(viii) Pupils of unequal size.\n\n(ix) Weakness on one side.\n\n(x) Drowsiness.\n\n(x) Irritability, disorientation.\n\n(xi) Vomiting.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          iconColor: Colors.green,
                          // ignore: prefer_const_constructors
                          leading: Icon(Icons.add_to_photos),
                          title: Text(
                            'Fructures',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Text(
                          'May have some or all of the following:',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(i) History of injury\n\n(ii) Wound/bruise to head.\n\n(iii) Soft area/dip in  scalp.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(iv) Low level of response.\n\n(v) Nose/ear fluid leak.\n\n(vi) Distortion of head/face.\n\n(vii) Irritability,confusion.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Head Injury" && substName == "Treatment") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          '1. Monitor casualty regularly. Keep a close eye on the level of response in case it deteriorates.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '2. When they have recovered ask a responsible adult to look after them.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '3. If they were playing a sport when it heppened do not let them return to play until they have been fully assessecby a medical practitionar',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '4. Seek medical help if any of the following apply: ',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '- Increasing drowsiness.\n\n- Persistent headache.\n\n- Difficulty in spaeaking or walking.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '- Vomiting.\n\n- Double vision.\n\n- Seizure.\n\n- Over 65 years old.\n\n- They are taking anti-clotting medication.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          '\n- They are intoxicated  with drugs or alcohol.\n\n- There is no responsible adult to look after them.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Earthquake" && substName == "Indoor") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          iconColor: Colors.teal,
                          leading: Icon(Icons.medical_services),
                          title: Text(
                            'If you are INDOORS -- STAY THERE! Get under a desk or table and hang on to it (Drop, Cover, and Hold on!) or move into a hallway or against an inside wall.\nSTAY CLEAR of windows, fireplaces, and heavy furniture or appliances.\nGET OUT of the kitchen, which is a dangerous place (things can fall on you).\nDON\'T run downstairs or rush outside while the building is shaking or while there is danger of falling and hurting yourself or being hit by falling glass or debris.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Earthquake" && substName == "Outside") {
      return ListTile(
        iconColor: Colors.teal,
        leading: Icon(Icons.medical_services),
        title: Text(
          'If you are OUTSIDE -- get into the OPEN, away from buildings, power lines, chimneys, and anything else that might fall on you.',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      );
    } else if (stName == "Earthquake" && substName == "Others") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ListTile(
                          iconColor: Colors.teal,
                          leading: Icon(Icons.medical_services),
                          title: Text(
                            'If you are DRIVING -- stop, but carefully. Move your car as far out of traffic as possible.\nDO NOT stop on or under a bridge or overpass or under trees, light posts, power lines, or signs.\nSTAY INSIDE your car until the shaking stops. When you RESUME driving, watch for breaks in the pavement, fallen rocks, and bumps in the road at bridge approaches.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          iconColor: Colors.teal,
                          leading: Icon(Icons.medical_services),
                          title: Text(
                            'If you are in a MOUNTAINOUS AREA -- watch out for falling rock, landslides, trees, and other debris that could be loosened by quakes.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          iconColor: Colors.teal,
                          leading: Icon(Icons.medical_services),
                          title: Text(
                            'If you are near the OCEAN - see these safety rules from NOAA\'s Tsunami Warning Center.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Stroke" && substName == "Recognition") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text(
                          'F.A.S.T \nFacial Weakness',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Unalbe to smile ,Droopy mouth or eye',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Arm Weakness',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Unable to lift arms(s) or Leg(s)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Speech Problems',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Unable to speak  clearly or understand',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Time to call 999/112',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '(i) If stoke suspected, other symtoms:\n-Unequal pupils.\n-Confusion',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Stroke" && substName == "Responsive") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          '1. Keep the casualty in a comfortable,  supported position. Even help them to lie down',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: <Widget>[
                              Text('2.Dial ',
                                  style: TextStyle(
                                    fontSize: 28,
                                  )),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '112',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launch('tel:112');
                                          },
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        )),
                                  ],
                                ),
                              ),
                              Text('/',
                                  style: TextStyle(
                                    fontSize: 28,
                                  )),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '999',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launch('tel:999');
                                          },
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        )),
                                  ],
                                ),
                              ),
                              Text(' for the emergency servies.',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ))
                            ])),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '3. Loosening any tight clothing and continue to ressure the casualty.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '4. Monitor and record the casualty\'s level of response, pluse and breathing.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '5. Do not give the casualty anything to eat or drink, as they may have difficulty swallowing.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    } else if (stName == "Stroke" && substName == "Unresponsive") {
      return new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          '1. Open airway and check breathing:\n\n-If they are breathing, put them  in the recovery position.\n\n- If they are not breathing, be prepared to resucitate.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '2. Dial 999/112 for the emergency services.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '3. Monitor and record level of response, pulse and breathing.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '4. Be prepared to resuscitate.',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              '${widget.category}',
              textStyle: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 200),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 200),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        //backgroundColor: Colors.blue,
      ),
      body: viewText(widget.situationName, widget.category),
    );
  }
}
