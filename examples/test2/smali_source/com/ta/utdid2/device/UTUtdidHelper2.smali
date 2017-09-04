.class public Lcom/ta/utdid2/device/UTUtdidHelper2;
.super Ljava/lang/Object;


# instance fields
.field private mAESKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/device/UTUtdidHelper2;

    const v1, 0x3f9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdidHelper2;->mAESKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdidHelper2;->mAESKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdidHelper2;->mAESKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native dePack(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
.end method
