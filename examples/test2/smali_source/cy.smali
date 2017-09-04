.class public final Lcy;
.super Ljava/lang/Object;

# interfaces
.implements Lbj;
.implements Lorg/webrtc/DataChannel$Observer;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lbh;

.field private a:Lcom/arrownock/live/IAnLiveEventListener;

.field private a:Lcom/arrownock/live/VideoView;

.field private a:Lda;

.field private a:Ldb;

.field private a:Ljava/lang/String;

.field private a:Lorg/webrtc/DataChannel;

.field private a:Lorg/webrtc/MediaConstraints;

.field private a:Lorg/webrtc/MediaStream;

.field private a:Lorg/webrtc/PeerConnection;

.field private a:Lorg/webrtc/VideoRenderer;

.field private a:Lorg/webrtc/VideoTrack;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbh;Ljava/lang/String;Landroid/content/Context;Lcom/arrownock/live/IAnLiveEventListener;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PeerConnectionManager"

    iput-object v0, p0, Lcy;->a:Ljava/lang/String;

    new-instance v0, Lda;

    invoke-direct {v0, p0}, Lda;-><init>(Lcy;)V

    iput-object v0, p0, Lcy;->a:Lda;

    new-instance v0, Ldb;

    invoke-direct {v0, p0}, Ldb;-><init>(Lcy;)V

    iput-object v0, p0, Lcy;->a:Ldb;

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    iput-object v1, p0, Lcy;->a:Lbh;

    iput-object v1, p0, Lcy;->b:Ljava/lang/String;

    iput v2, p0, Lcy;->a:I

    iput-object v1, p0, Lcy;->a:Lcom/arrownock/live/VideoView;

    iput-boolean v2, p0, Lcy;->a:Z

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/VideoTrack;

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/VideoRenderer;

    iput-object v1, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iput-object v1, p0, Lcy;->a:Landroid/content/Context;

    iput-object v1, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    new-instance v0, Lorg/webrtc/MediaConstraints;

    invoke-direct {v0}, Lorg/webrtc/MediaConstraints;-><init>()V

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    iget-object v0, v0, Lorg/webrtc/MediaConstraints;->mandatory:Ljava/util/List;

    new-instance v1, Lorg/webrtc/MediaConstraints$KeyValuePair;

    const-string v2, "OfferToReceiveAudio"

    const-string v3, "true"

    invoke-direct {v1, v2, v3}, Lorg/webrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    iget-object v0, v0, Lorg/webrtc/MediaConstraints;->mandatory:Ljava/util/List;

    new-instance v1, Lorg/webrtc/MediaConstraints$KeyValuePair;

    const-string v2, "OfferToReceiveVideo"

    const-string v3, "true"

    invoke-direct {v1, v2, v3}, Lorg/webrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcy;->b:Ljava/lang/String;

    iput-object p1, p0, Lcy;->a:Lbh;

    iput-object p3, p0, Lcy;->a:Landroid/content/Context;

    iput-object p4, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    return-void
.end method

.method static synthetic a(Lcy;)I
    .registers 2

    iget v0, p0, Lcy;->a:I

    return v0
.end method

.method static synthetic a(Lcy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcy;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcy;)Lbh;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lbh;

    return-object v0
.end method

.method static synthetic a(Lcy;)Lcom/arrownock/live/IAnLiveEventListener;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    return-object v0
.end method

.method static synthetic a(Lcy;)Lcom/arrownock/live/VideoView;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/VideoView;

    return-object v0
.end method

.method static synthetic a(Lcy;Lcom/arrownock/live/VideoView;)Lcom/arrownock/live/VideoView;
    .registers 2

    iput-object p1, p0, Lcy;->a:Lcom/arrownock/live/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcy;)Ldb;
    .registers 2

    iget-object v0, p0, Lcy;->a:Ldb;

    return-object v0
.end method

.method static synthetic a(Lcy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const-string v1, "^a=rtpmap:(\\d+) ISAC/16000[\r]?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    move v2, v3

    move v1, v4

    :goto_12
    array-length v7, v5

    if-ge v2, v7, :cond_38

    if-eq v1, v4, :cond_19

    if-nez v0, :cond_38

    :cond_19
    aget-object v7, v5, v2

    const-string v8, "m=audio "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v1, v2

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_27
    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_38
    if-ne v1, v4, :cond_42

    iget-object v0, p0, Lcy;->a:Ljava/lang/String;

    const-string v1, "No m=audio line, so can\'t prefer iSAC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-object p1

    :cond_42
    if-nez v0, :cond_4c

    iget-object v0, p0, Lcy;->a:Ljava/lang/String;

    const-string v1, "No ISAC/16000 line, so can\'t prefer iSAC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_4c
    aget-object v2, v5, v1

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v4, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v9

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    const/4 v2, 0x3

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_85
    array-length v7, v4

    if-ge v2, v7, :cond_9e

    aget-object v7, v4, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9b

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, v5

    :goto_aa
    if-ge v3, v1, :cond_ba

    aget-object v2, v5, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    :cond_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_41
.end method

.method static synthetic a(Lcy;)Lorg/webrtc/DataChannel;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    return-object v0
.end method

.method static synthetic a(Lcy;Lorg/webrtc/DataChannel;)Lorg/webrtc/DataChannel;
    .registers 2

    iput-object p1, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Lorg/webrtc/MediaConstraints;
    .registers 11

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    :cond_5
    :try_start_5
    new-instance v0, Lorg/webrtc/MediaConstraints;

    invoke-direct {v0}, Lorg/webrtc/MediaConstraints;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "mandatory"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_39

    move v2, v1

    :goto_1e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_39

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/webrtc/MediaConstraints;->mandatory:Ljava/util/List;

    new-instance v9, Lorg/webrtc/MediaConstraints$KeyValuePair;

    invoke-direct {v9, v6, v7}, Lorg/webrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_39
    const-string v2, "optional"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lorg/webrtc/MediaConstraints;->optional:Ljava/util/List;

    new-instance v6, Lorg/webrtc/MediaConstraints$KeyValuePair;

    invoke-direct {v6, v4, v3}, Lorg/webrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_62} :catch_65

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :catch_65
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcy;)Lorg/webrtc/PeerConnection;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    return-object v0
.end method

.method static synthetic a(Lcy;)Lorg/webrtc/VideoRenderer;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/VideoRenderer;

    return-object v0
.end method

.method static synthetic a(Lcy;Lorg/webrtc/VideoRenderer;)Lorg/webrtc/VideoRenderer;
    .registers 2

    iput-object p1, p0, Lcy;->a:Lorg/webrtc/VideoRenderer;

    return-object p1
.end method

.method static synthetic a(Lcy;)Lorg/webrtc/VideoTrack;
    .registers 2

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/VideoTrack;

    return-object v0
.end method

.method static synthetic a(Lcy;Lorg/webrtc/VideoTrack;)Lorg/webrtc/VideoTrack;
    .registers 2

    iput-object p1, p0, Lcy;->a:Lorg/webrtc/VideoTrack;

    return-object p1
.end method

.method static synthetic a(Lcy;)V
    .registers 1

    invoke-direct {p0}, Lcy;->d()V

    return-void
.end method

.method static synthetic a(Lcy;)Z
    .registers 2

    iget-boolean v0, p0, Lcy;->a:Z

    return v0
.end method

.method static synthetic a(Lcy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcy;->a:Z

    return p1
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_45

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    invoke-virtual {v0}, Lorg/webrtc/VideoTrack;->enabled()Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "on"

    :goto_31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "video"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcy;->a(Ljava/util/Map;)V

    :cond_45
    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_85

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, v0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/AudioTrack;

    invoke-virtual {v0}, Lorg/webrtc/AudioTrack;->enabled()Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "on"

    :goto_71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "audio"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcy;->a(Ljava/util/Map;)V

    :cond_85
    return-void

    :cond_86
    const-string v0, "off"

    goto :goto_31

    :cond_89
    const-string v0, "off"

    goto :goto_71
.end method


# virtual methods
.method public final a(Lorg/webrtc/PeerConnectionFactory;Lorg/webrtc/MediaStream;)Lorg/webrtc/PeerConnection;
    .registers 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lorg/webrtc/PeerConnection$IceServer;

    const-string v2, "stun:10.1.215.152:3478"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lorg/webrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"mandatory\": {\"DtlsSrtpKeyAgreement\": true}, \"optional\": [{\"RtpDataChannels\":true}]}"

    invoke-static {v1}, Lcy;->a(Ljava/lang/String;)Lorg/webrtc/MediaConstraints;

    move-result-object v1

    iget-object v2, p0, Lcy;->a:Lda;

    invoke-virtual {p1, v0, v1, v2}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Ljava/util/List;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v0

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    invoke-virtual {v0, p2}, Lorg/webrtc/PeerConnection;->addStream(Lorg/webrtc/MediaStream;)Z

    iput-object p2, p0, Lcy;->a:Lorg/webrtc/MediaStream;

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    return-object v0
.end method

.method public final a()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcy;->a:Z

    if-nez v0, :cond_2a

    new-instance v0, Lorg/webrtc/DataChannel$Init;

    invoke-direct {v0}, Lorg/webrtc/DataChannel$Init;-><init>()V

    iput-boolean v1, v0, Lorg/webrtc/DataChannel$Init;->negotiated:Z

    iput-boolean v1, v0, Lorg/webrtc/DataChannel$Init;->ordered:Z

    iget-object v1, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    const-string v2, "anLiveDataChannel"

    invoke-virtual {v1, v2, v0}, Lorg/webrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/webrtc/DataChannel$Init;)Lorg/webrtc/DataChannel;

    move-result-object v0

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    invoke-virtual {v0, p0}, Lorg/webrtc/DataChannel;->registerObserver(Lorg/webrtc/DataChannel$Observer;)V

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    iget-object v1, p0, Lcy;->a:Ldb;

    iget-object v2, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/PeerConnection;->createOffer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    :cond_2a
    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcy;->a:I

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    invoke-virtual {v0}, Lorg/webrtc/DataChannel;->state()Lorg/webrtc/DataChannel$State;

    move-result-object v0

    sget-object v1, Lorg/webrtc/DataChannel$State;->OPEN:Lorg/webrtc/DataChannel$State;

    if-ne v0, v1, :cond_34

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_34

    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/webrtc/DataChannel$Buffer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    invoke-virtual {v0, v1}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcy;->a:Z

    if-nez v0, :cond_28

    :try_start_8
    new-instance v2, Lorg/webrtc/IceCandidate;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "label"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "candidate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    invoke-virtual {v0, v2}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public final a(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcy;->a:Z

    if-nez v0, :cond_18

    :try_start_8
    new-instance v0, Lorg/webrtc/SessionDescription;

    invoke-direct {p0, p2}, Lcy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    iget-object v1, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    iget-object v2, p0, Lcy;->a:Ldb;

    invoke-virtual {v1, v2, v0}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcy;->a:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    iget-object v1, p0, Lcy;->a:Ldb;

    iget-object v2, p0, Lcy;->a:Lorg/webrtc/MediaConstraints;

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    :cond_11
    return-void
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    invoke-virtual {v0}, Lorg/webrtc/PeerConnection;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/PeerConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcy;->a:Z

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/MediaStream;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessage(Lorg/webrtc/DataChannel$Buffer;)V
    .registers 5
    .param p1, "buffer"    # Lorg/webrtc/DataChannel$Buffer;

    .prologue
    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_4c

    iget-object v0, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    sget-object v2, Lcom/arrownock/live/VideoState;->ON:Lcom/arrownock/live/VideoState;

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyVideoStateChanged(Ljava/lang/String;Lcom/arrownock/live/VideoState;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    sget-object v2, Lcom/arrownock/live/VideoState;->OFF:Lcom/arrownock/live/VideoState;

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyVideoStateChanged(Ljava/lang/String;Lcom/arrownock/live/VideoState;)V

    goto :goto_4c

    :catch_5f
    move-exception v0

    goto :goto_4c

    :cond_61
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    sget-object v2, Lcom/arrownock/live/AudioState;->ON:Lcom/arrownock/live/AudioState;

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyAudioStateChanged(Ljava/lang/String;Lcom/arrownock/live/AudioState;)V

    goto :goto_4c

    :cond_7b
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    sget-object v2, Lcom/arrownock/live/AudioState;->OFF:Lcom/arrownock/live/AudioState;

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyAudioStateChanged(Ljava/lang/String;Lcom/arrownock/live/AudioState;)V
    :try_end_8c
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_8c} :catch_5f

    goto :goto_4c
.end method

.method public final onStateChange()V
    .registers 3

    sget-object v0, Lcz;->a:[I

    iget-object v1, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    invoke-virtual {v1}, Lorg/webrtc/DataChannel;->state()Lorg/webrtc/DataChannel$State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/DataChannel$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    invoke-direct {p0}, Lcy;->d()V

    goto :goto_11

    :pswitch_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcy;->a:Lorg/webrtc/DataChannel;

    goto :goto_11

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method public final onVideoSizeChanged(IIZZ)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isLocal"    # Z
    .param p4, "isFirstTime"    # Z

    .prologue
    if-nez p3, :cond_19

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcy;->b:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/VideoView;

    if-eqz v0, :cond_19

    if-eqz p4, :cond_1a

    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcy;->a:Lcom/arrownock/live/VideoView;

    invoke-interface {v0, v1, v2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyVideoViewReady(Ljava/lang/String;Lcom/arrownock/live/VideoView;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcy;->a:Lcom/arrownock/live/IAnLiveEventListener;

    iget-object v1, p0, Lcy;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/arrownock/live/IAnLiveEventListener;->onRemotePartyVideoSizeChanged(Ljava/lang/String;II)V

    goto :goto_19
.end method
