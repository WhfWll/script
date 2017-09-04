.class public final Lbn;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbm;


# instance fields
.field private a:Leq;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    sput-object v0, Lbn;->a:Lbm;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lbn;->a:Ljava/lang/String;

    iput-object v1, p0, Lbn;->a:Leq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbn;->a:Z

    iput-object v1, p0, Lbn;->b:Ljava/lang/String;

    new-instance v0, Leq;

    invoke-direct {v0}, Leq;-><init>()V

    iput-object v0, p0, Lbn;->a:Leq;

    return-void
.end method

.method static synthetic a(Lbn;)Leq;
    .registers 2

    iget-object v0, p0, Lbn;->a:Leq;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lez;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const v6, -0x30d4a

    if-nez p1, :cond_b

    new-instance v0, Lez;

    invoke-direct {v0}, Lez;-><init>()V

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_2a

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid JSON format of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, v6}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONArray;

    if-nez v4, :cond_6c

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_8c

    :cond_6c
    :try_start_6c
    const-string v4, ""

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5, v2}, Lbn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_50

    :catch_76
    move-exception v1

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid JSON format of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, v6}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_8c
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_98
    new-instance v0, Lez;

    invoke-direct {v0, v2}, Lez;-><init>(Ljava/util/Map;)V

    goto/16 :goto_a
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbn;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "10.1.215.152:3002"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbn;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method static synthetic a(Lbn;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lbn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-boolean v0, p0, Lbn;->a:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lbn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_21
    const-string v1, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUVWRENDQXp5Z0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFEVUhxemtra3VaeElQbFI4ZDdnZU4wQzlJQkpLZkJWY0ZNM1FsVzhCbC9sZW9BZHMreDBpbXUKb3VCY2p6czN4aWFUR1Z1dklKODRvbUxNbHMyeUlGNWt5NE5RM0R1citIU280eE1pMVNBRXpFcXJhZ2hXeGRFSQovZlVtUnFrWHFLUUhtQmVUVUdqaXZDVExEOUp4a0trR2lFVWFSNmhGdjJseWZuM3U4emFYeGRFOTRWMkg2VkhPCmg5Y1N3d2xIZHhjcXZ5Z2dTUVE1cERkS2UrNEcyckZZSWlqeVJ1elNrWkhjNndDZ1NwVVRpMUE3ckZGZkVPdUsKU1ZDZ3ZnSmtkbFZzUzlOWVp4WGx1RmJNd3Jtd3pqdUM0WEliamlQZExmd21ya25PQ2Y3VE9lYkNDbmo3WHVoZApiNnIxdWdqUC80Wmk2bTM2anEyeVFKZEVRcWVmMXpXZEFnTUJBQUdqZ2dFVE1JSUJEekFKQmdOVkhSTUVBakFBCk1Bc0dBMVVkRHdRRUF3SUY0REFSQmdsZ2hrZ0JodmhDQVFFRUJBTUNCa0F3SFFZRFZSME9CQllFRkVmTnAyZGIKS2JEbG5NTk5uWlZlckJHU09pVUNNSUdVQmdOVkhTTUVnWXd3Z1ltQUZOQ0JPcEw4TlcvYkhYc2tUc1FVdit0YworR3dYb1dha1pEQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnBhbWx1WnpFUU1BNEdBMVVFCkJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRFZRUUREQkpCY25KdmQyNXYKWTJzZ1EyOHVMRXgwWkM2Q0NRRFQzVTJldUp4dENqQXNCZ05WSFJFRUpUQWpnZ29xTGpFeU16QTJMbU51Z2c4cQpMbUZ5Y205M2JtOWpheTVqYjIySEJBb0M2MU13RFFZSktvWklodmNOQVFFRkJRQURnZ0VCQUVPaWFRekFleDZXCnUzVkIzTkw5Q2JpR2VqZVlxNStVVXpiMzFMaGlMSDdyeXU1M0F4dmtSS1VQRjNJdTRZcmhObk44MWxYL0w3dFoKLzJvQXZMV0V3Y0NVdVNnNENHYURnYlZycjVPd0ozK1pNNnhKb1NJQTZ3RzExQkNWa1l0NTJ0cnZuZ0VJU2FhMwppd3dZWmJPbldhL0ZVZHA3N093K1VCbExiZXRZSndqSXk2UlZrMGxJOHEyb24zMEd6VWZOSGF6blVpVU1sdWV4CkdjRGU5Q2srYTJqL1BGVjlkRWIyYkRvSW52NkdhSXd1V29KR094ZnJRUVRaUFdVTDZrM0JVMHdDVThKWTdQaXQKSGlIZ1dNLzVWRzhUdGU4Mm1XcjV4Rmk3NEkyUFZ3SDdUd3RUbEFOaGN0a0Z6VUROd0Iyem1nVWZxZklGWCtHMApETUQwT3h2bldicz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

    const-string v2, "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURYekNDQWtlZ0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRVUZBREJpTVFzd0NRWURWUVFHRXdKRFRqRVEKTUE0R0ExVUVDQXdIUW1WcGFtbHVaekVRTUE0R0ExVUVCd3dIUW1WcGFtbHVaekVTTUJBR0ExVUVDd3dKUVhKeQpiM2R1YjJOck1Sc3dHUVlEVlFRRERCSkJjbkp2ZDI1dlkyc2dRMjh1TEV4MFpDNHdIaGNOTVRZd05qQTFNVFUxCk5qTXdXaGNOTXpZd05UTXhNVFUxTmpNd1dqQmlNUXN3Q1FZRFZRUUdFd0pEVGpFUU1BNEdBMVVFQ0F3SFFtVnAKYW1sdVp6RVFNQTRHQTFVRUJ3d0hRbVZwYW1sdVp6RVNNQkFHQTFVRUN3d0pRWEp5YjNkdWIyTnJNUnN3R1FZRApWUVFEREJKQmNuSnZkMjV2WTJzZ1EyOHVMRXgwWkM0d2dnRWlNQTBHQ1NxR1NJYjNEUUVCQVFVQUE0SUJEd0F3CmdnRUtBb0lCQVFERTREa1dWT1BmVlY2TjVkRktxaUtsaUNodUNreEQ4SDdLUTNyUm1ZdnY0K3NKdzFDUXBpU3cKOUpDQlJ6dDk5anM3VWdZK3htUnl1S0dNMWIrN3UwUERtT0xhNithTktZVEpRREZVaUE1Qlp2SWNHZFdKWjZJNwpjMk0zc1lzSU5uV1Q3Q0EySnV3TDR2V094eXB5UlhvQm8rWUFtYm12ZVlTcnpyK1VzT2JybENwSjdaOEhhRkowCm15VmFLL3FqQllqVzVWTFFiUHhNSGxrWURmbHYxdytwQUJNRDhLREtwSGc4Y1RmOGVoR1FPSHZ4NUtxMFNDU3UKZTlnNzkyV3hNOGdKWTZPRHJ3OW53d1QxUHVZZmJUNm5XU0kwY0VYZUZhK2pNVXVzaWJwSWhYdVRiNzR5ZmVyUwpjeE55WlE3TzNydEJFbThPVk15NzBFcmpjemlVU1NIM0FnTUJBQUdqSURBZU1Ba0dBMVVkRXdRQ01BQXdFUVlKCllJWklBWWI0UWdFQkJBUURBZ2VBTUEwR0NTcUdTSWIzRFFFQkJRVUFBNElCQVFBemYwQnphUWhGcklHUnUzTjgKZU4ycEhQMzZEK1o4OXQzcTVDWG5TbW9ERTBObUY0Yjc2T1dKU2YyOERoZHoycjBPS3pUOThjR3RlY25ZMHE4VApvTW5pZHdiK21DUFloQ09qTkpnbitwUjNIWGh0YjdwaSt4RkVieituOWNHT3kxWW02bTZidUdHSitaUHZ6Z2JOClA5N1BPdi92aVl0SUkxZmFVdzZaMDBSdmxqUlBqNFZJQjN2ZTNWa3NrOUpRSXJxRTVhUFhGNEwxTFpyV21jRkwKWlJURVMyUnpQZ2ZQZktJOTlyWVlJYnE0MVRQRDlFemhmdkJORyt0WmdnSG9uY0ROdnhYcE1USmZlOEZzUVNmeQphaFFXQ0lrcnE0YXZIWGlETmtqNlFocXJQT0tZRTR6K1VBY0VLSHpUQnZ2Z2ZKUTZ0TVJjUjcvMmNZTHMxZTNKCmlXdkYKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

    const-string v3, "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBeE9BNUZsVGozMVZlamVYUlNxb2lwWWdvYmdwTVEvQit5a042MFptTDcrUHJDY05RCmtLWWtzUFNRZ1VjN2ZmWTdPMUlHUHNaa2NyaWhqTlcvdTd0RHc1amkydXZtalNtRXlVQXhWSWdPUVdieUhCblYKaVdlaU8zTmpON0dMQ0RaMWsrd2dOaWJzQytMMWpzY3Fja1Y2QWFQbUFKbTVyM21FcTg2L2xMRG02NVFxU2UyZgpCMmhTZEpzbFdpdjZvd1dJMXVWUzBHejhUQjVaR0EzNWI5Y1BxUUFUQS9DZ3lxUjRQSEUzL0hvUmtEaDc4ZVNxCnRFZ2tybnZZTy9kbHNUUElDV09qZzY4UFo4TUU5VDdtSDIwK3Axa2lOSEJGM2hXdm96RkxySW02U0lWN2syKysKTW4zcTBuTVRjbVVPenQ2N1FSSnZEbFRNdTlCSzQzTTRsRWtoOXdJREFRQUJBb0lCQVFDMTNWdGU0YlJPanBIMgpDcUkza3NyR2x1eWlHaWt4YVd2MmREZDBmNTdoVDIzRGF3VjFXY1R6SWppSzg3NWxNWnl0dzZ1NU9aTjQxazJGCng3NkNNUTc4RkxNYkFHZk5adGtlLzRtU1NNekNaZEtwV3NRRFZoUnJUc0FNcHBtRVVLcDBwdDlxcHJIT21TMjEKWXc0MjJTOUhiSnYvV2dKSnNydDM2bGpYaGtNS3dnY0I3Vk8yRnh5cWNyOUl5VW5uYkVCOWhEN3F2cm54VHNaTwpicWtMSW9ncnkyNjZOb3R0YmVhR3dMUW5XTG1NSFRjcFdIV0dibURaLzBjNUVkS1N3UmpHbllRN2c3TncrU2o3Cjd2NUpiYkc0UWNEK1BwUlh6bW9Hc29QUkVoMzlzNi8wQjVCUWQzNjdmM05oQ0hVa0QzNWFiMDJEVGdTdW13cW4KOXRTUUJPSmhBb0dCQVBqdmRNS1BibUZPV2hxdENVdlEwL1FSOStaS09XVGREZmdZZVdVZGVJUEg0bzVlelZoQwovOGVLVXp3d1FHdGduUk1reXNEbVRqR1ZnRTFjZUwxN1BxUU51VmxaeWZqbkVyK1MzVmFJVDE1M1VvRnJzTWtNCmJmbm45c1hVWlJQc0JqL3U2R3A4Q3dramRWMTBSMXEySDZjdjFWRnBobjFXTUVOM1JmL0E3VWtyQW9HQkFNcDIKakhWR3NWRVFpZFdJZXI2M3RxVzZHVjJrejBrNHFnT3RJcVZkS1p0dVNPMUZWRDVoblRLQzVUQ0ZGRkN5WlF5bwpUQWtaMnQwb2NSd01WSnY2cklNUGNnVXVwZXE1cTdaNE43MHdtUytDRUNtYTVROTlxY3l0OXlSWjYyR3NMSDlhCk5XaXZ2QW8yL2FYalYxYTF1Z0xCZHBkZHJzUElWc1JwYWM2b2w4eGxBb0dCQU0yN2dRRG03MittQkp1MVZGQi8KVnh5STJSdFBUcDNJZjZvQitCb1VRQ3lSUHZFdzhuNjJhSlB1QXhwa09tbEQ0SzBZcENUR2NldFN4a1dwWGZRagpia0xCUU9UU2F6UzFMRzU5bjBYTHcrU3JzdGxaT2pMK2ZjbWk1dlRhczJyQ2p1dTV0QVdGWE0yQnE1YS82ZFRUClhkZWJsYTRDQzI5OGtzaS9RMis2YjZFZkFvR0FXZ1FQT3UwdFZROTNXTnNQUjlCQ2dyaVZJbzl1SWUzeG1TVFgKTEpLWk55UDNoSmE0ZCt2S2luU3NGY0IxWWRPUEhldU5zdFl0K3ZwS0grQlRsZTREMlZsNnBsY3hLWVZYbFE4cQpLUkY4YWlUM3JxZlJnK3VwSFBtVDBqT3dkWUtwWGczcmhSbnREdFdZUExNeFY3b0FjODAwUHVSR0dZSHZJZkNFClBIKzB6Z2tDZ1lBSE5LS1RGTUxaZU9RTXBiNXYyYzNVdUNEaG1kQjczcGI4RTV1SnJidktIV09pc3kyVHcrRkEKL0E4WmJzMEp5UGFqZnhyODQ4ZFlFNU00OHlnSDVUc3gycFBsdXNOQjVnT054WlNLWkxRaGpKY3k5RUlQZEx6QwpGUWllblM4NXUwdTRDZ21DMG9JTnMrQnFFZE91eUhwUkdiRzV3Z285U3kya1pKaXJuZzZHOGc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="

    const-string v4, ""

    const-string v5, "BKS"

    invoke-static {v1, v2, v3, v4, v5}, Lcj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    new-instance v2, Lcj;

    invoke-direct {v2, v1}, Lcj;-><init>(Ljava/security/KeyStore;)V

    sget-object v1, Lbn;->a:Lbm;

    invoke-virtual {v2, v1}, Lcj;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    iget-object v1, p0, Lbn;->a:Leq;

    invoke-virtual {v1, v2}, Leq;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_5c

    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lbn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_c8

    check-cast p3, Lorg/json/JSONArray;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move-object v2, p2

    :goto_10
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c6

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    move v2, v1

    move-object v3, p2

    :goto_20
    array-length v6, v5

    if-ge v2, v6, :cond_45

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_45
    move-object v2, v3

    :cond_46
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7, p4}, Lbn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7, p4}, Lbn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    :cond_c6
    move-object v0, v4

    :goto_c7
    return-object v0

    :cond_c8
    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_185

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_182

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_117

    move v2, v1

    move-object v3, p2

    :goto_f2
    array-length v8, v6

    if-ge v2, v8, :cond_118

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, v6, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f2

    :cond_117
    move-object v3, p2

    :cond_118
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p2, v7, p4}, Lbn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, v7, p4}, Lbn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d8

    :cond_182
    move-object v0, v4

    goto/16 :goto_c7

    :cond_185
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c7
.end method

.method private static a(Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v2, "status"

    const-string v3, "fail"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorCode"

    const v3, -0x30d44

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_29} :catch_39
    .catchall {:try_start_a .. :try_end_29} :catchall_4d

    if-eqz p1, :cond_38

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcg;

    invoke-direct {v2, p1, v1}, Lcg;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4d

    if-eqz p1, :cond_38

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcg;

    invoke-direct {v2, p1, v1}, Lcg;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_38

    :catchall_4d
    move-exception v0

    if-eqz p1, :cond_5d

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcg;

    invoke-direct {v3, p1, v1}, Lcg;-><init>(Lcom/arrownock/social/IAnSocialCallback;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_5d
    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lbn;->a:Leq;

    invoke-virtual {v0, p1}, Leq;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lbn;->a:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbn;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lbn;->a(Lorg/json/JSONObject;)Lez;

    move-result-object v0

    iget-object v1, p0, Lbn;->a:Leq;

    invoke-direct {p0, p1}, Lbn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbo;

    invoke-direct {v3, p3}, Lbo;-><init>(Lcom/arrownock/social/IAnSocialCallback;)V

    invoke-virtual {v1, v2, v0, v3}, Leq;->a(Ljava/lang/String;Lez;Lev;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/io/InputStream;Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const-string v0, "files"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, p2}, Lbn;->a(Lorg/json/JSONObject;)Lez;

    move-result-object v2

    if-eqz v1, :cond_20

    :try_start_c
    const-string v0, "file"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_27

    move-result-object v0

    :goto_12
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v0, "FileName is invalid"

    invoke-static {v0, p4}, Lbn;->a(Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)V

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    const-string v0, "photo"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_12

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "FileName is invalid"

    invoke-static {v0, p4}, Lbn;->a(Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)V

    goto :goto_1f

    :cond_31
    if-eqz v1, :cond_46

    const-string v1, "file"

    :goto_35
    invoke-virtual {v2, v1, p3, v0}, Lez;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcb;

    invoke-direct {v1, p0, p1, v2, p4}, Lcb;-><init>(Lbn;Ljava/lang/String;Lez;Lcom/arrownock/social/IAnSocialCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_1f

    :cond_46
    const-string v1, "photo"

    goto :goto_35
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;[BLcom/arrownock/social/IAnSocialCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    const-string v0, "files"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, p2}, Lbn;->a(Lorg/json/JSONObject;)Lez;

    move-result-object v2

    if-eqz v1, :cond_20

    :try_start_c
    const-string v0, "file"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_27

    move-result-object v0

    :goto_12
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v0, "FileName is invalid"

    invoke-static {v0, p4}, Lbn;->a(Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)V

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    const-string v0, "photo"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_12

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "FileName is invalid"

    invoke-static {v0, p4}, Lbn;->a(Ljava/lang/String;Lcom/arrownock/social/IAnSocialCallback;)V

    goto :goto_1f

    :cond_31
    if-eqz v1, :cond_4b

    const-string v1, "file"

    :goto_35
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v1, v3, v0}, Lez;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbw;

    invoke-direct {v1, p0, p1, v2, p4}, Lbw;-><init>(Lbn;Ljava/lang/String;Lez;Lcom/arrownock/social/IAnSocialCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_1f

    :cond_4b
    const-string v1, "photo"

    goto :goto_35
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbn;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lbn;->a(Lorg/json/JSONObject;)Lez;

    move-result-object v0

    iget-object v1, p0, Lbn;->a:Leq;

    invoke-direct {p0, p1}, Lbn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbs;

    invoke-direct {v3, p3}, Lbs;-><init>(Lcom/arrownock/social/IAnSocialCallback;)V

    invoke-virtual {v1, v2, v0, v3}, Leq;->b(Ljava/lang/String;Lez;Lev;)V

    return-void
.end method
