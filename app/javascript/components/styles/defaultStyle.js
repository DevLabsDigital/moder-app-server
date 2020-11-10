export default {
  control: {
    backgroundColor: "#f5f5f5",
    height: 200,
    fontSize: 16,
    fontWeight: 'normal',

  },

  highlighter: {
    overflow: 'hidden',
  },

  input: {
    margin: 0,
    width: 800,
    height: 45,

  },

  '&singleLine': {
    control: {
      display: 'inline-block',
      height: 45,
      width: 800,
      paddingTop: 10
    },

    highlighter: {
      padding: 1,
      border: '2px inset transparent',
    },

    input: {
      padding: 1,
      borderRadius: 6,
      
      border: 'solid 0.5px #acacac',
    },
  },

  

  suggestions: {
    list: {
      backgroundColor: "#f5f5f5",
      border: '1px solid rgba(0,0,0,0.15)',
      fontSize: 14,
    },

    item: {
      padding: '5px 15px',
      borderBottom: '1px solid rgba(0,0,0,0.15)',
      
      '&focused': {
        backgroundColor: '#cee4e5',
      },
    },
  },
}