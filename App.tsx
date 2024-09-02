import { useState } from "react";
import {StyleSheet, View, Text, Button, SafeAreaView } from "react-native";
import { HelloTextView, TextSettingsView } from "./Native";

function App(): React.JSX.Element {

  const nameArray = ["Alice", "Bob", "Charlie", "Can", "David", "Eve"];

  const getRandomName = () => {
    const randomIndex = Math.floor(Math.random() * nameArray.length);
    return nameArray[randomIndex];
  };

  const [currentName, setCurrentName] = useState(getRandomName);

  const handleChangeName = () => {
    setCurrentName(getRandomName)
}

const [isBold, setIsBold] = useState(false);
  const [isItalic, setIsItalic] = useState(false);
  const [isUnderline, setIsUnderline] = useState(false);


  return(
    <SafeAreaView style = { styles.container } >

      {/* <Text>Just React Native</Text> */}

    {/* <HelloTextView
              style={
                {
                }
              }
            /> */}

      <View style = { styles.wrapper }>
      <Text style={{ 
          fontSize: 50,
          color: 'red',
          fontWeight: isBold ? 'bold' : 'normal',
          fontStyle: isItalic ? 'italic' : 'normal',
          textDecorationLine: isUnderline ? 'underline' : 'none',
          }}>{currentName}</Text>
        <Button title = "Change Name" onPress = { handleChangeName }/>
      </View>

          {/* Our SwiftUI Code */}
          <TextSettingsView 
            style={styles.wrapper}

            onChangeBoldToggle={ event => {
              setIsBold(event.nativeEvent.isBold)
            }
          }
          onChangeItalicToggle={ event => {
            setIsItalic(event.nativeEvent.isItalic)
            }
          }
          onChangeUnderlineToggle={ event => {
            setIsUnderline(event.nativeEvent.isUnderline)
            }
          }
          />
          
    </SafeAreaView>
  );
}

export default App;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'stretch',
    justifyContent: 'center'
  },
  wrapper: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center'
  }
})