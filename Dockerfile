FROM node:20
RUN echo "Hello Frontend"
WORKDIR /app/frontend
COPY package*.json /app/frontend/
RUN npm install
COPY . /app/frontend/
ENV TEST="Hello Frontend!"
CMD ["npm", "start"]
EXPOSE 3000
RUN echo "Frontend is running! 🤑"