const base = {
    get() {
        return {
            url : "http://localhost:8080/hospitalRegistration/",
            name: "hospitalRegistration",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/hospitalRegistration/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校医院挂号平台"
        } 
    }
}
export default base
