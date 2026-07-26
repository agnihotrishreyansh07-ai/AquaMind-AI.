import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import LSTM, Dense

def build_lstm_model(input_shape):
    model = Sequential()
    
    # LSTM layer to analyze time-series water flow data
    model.add(LSTM(50, activation='relu', input_shape=input_shape))
    
    # Output layer (e.g., 0 for normal, 1 for leak detected)
    model.add(Dense(1, activation='sigmoid'))
    
    model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])
    return model

if __name__ == "__main__":
    # Example shape: 10 time steps, 2 features (pressure, flow)
    model = build_lstm_model((10, 2))
    model.summary()
    print("LSTM Model template ready for training.")
