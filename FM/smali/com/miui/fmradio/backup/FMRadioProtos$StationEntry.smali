.class public final Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FMRadioProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/FMRadioProtos$StationEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/FMRadioProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StationEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private frequency_:I

.field private guid_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;-><init>(Z)V

    sput-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .line 721
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->initFields()V

    .line 722
    return-void
.end method

.method private constructor <init>(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .prologue
    const/4 v0, -0x1

    .line 133
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 270
    iput-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedIsInitialized:B

    .line 299
    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedSerializedSize:I

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;Lcom/miui/fmradio/backup/FMRadioProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .param p2, "x1"    # Lcom/miui/fmradio/backup/FMRadioProtos$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;-><init>(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 135
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 270
    iput-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedIsInitialized:B

    .line 299
    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedSerializedSize:I

    .line 135
    return-void
.end method

.method static synthetic access$302(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I

    return p1
.end method

.method static synthetic access$702(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I

    return p1
.end method

.method static synthetic access$802(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    .line 169
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 170
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 172
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    .line 175
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    .line 233
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 234
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 236
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    .line 239
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    .line 201
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 204
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    .line 207
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    .line 267
    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I

    .line 268
    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I

    .line 269
    return-void
.end method

.method public static newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1

    .prologue
    .line 403
    # invokes: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->access$100()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .prologue
    .line 406
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    .line 155
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 156
    check-cast v1, Ljava/lang/String;

    .line 164
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 158
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 160
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iput-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 164
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    .line 219
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 220
    check-cast v1, Ljava/lang/String;

    .line 228
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 224
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    iput-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 228
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    .line 187
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 188
    check-cast v1, Ljava/lang/String;

    .line 196
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 190
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 192
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iput-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 196
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 301
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedSerializedSize:I

    .line 302
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 326
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 304
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 305
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 309
    :cond_1
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    :cond_2
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 314
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    :cond_3
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 318
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 321
    :cond_4
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 322
    const/4 v2, 0x5

    iget v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    :cond_5
    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 326
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I

    return v0
.end method

.method public hasFrequency()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 151
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedIsInitialized:B

    .line 273
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 276
    :goto_0
    return v1

    .line 273
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 275
    :cond_1
    iput-byte v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilderForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->toBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1

    .prologue
    .line 408
    invoke-static {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilder(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 281
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getSerializedSize()I

    .line 282
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 285
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 288
    :cond_1
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 289
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 291
    :cond_2
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 292
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 294
    :cond_3
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 295
    const/4 v0, 0x5

    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 297
    :cond_4
    return-void
.end method
