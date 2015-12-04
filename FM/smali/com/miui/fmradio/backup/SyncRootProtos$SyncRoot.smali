.class public final Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/SyncRootProtos$SyncRootOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/SyncRootProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;-><init>(Z)V

    sput-object v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    .line 314
    sget-object v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->initFields()V

    .line 315
    return-void
.end method

.method private constructor <init>(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50
    iput-byte v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;Lcom/miui/fmradio/backup/SyncRootProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .param p2, "x1"    # Lcom/miui/fmradio/backup/SyncRootProtos$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50
    iput-byte v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .param p1, "x1"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 49
    return-void
.end method

.method public static newBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 155
    # invokes: Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->access$100()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    .prologue
    .line 158
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    # invokes: Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildParsed()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    invoke-static {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->access$000(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->defaultInstance:Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public getFmradio()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 70
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 78
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 72
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 73
    iget v2, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 74
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 77
    :cond_1
    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    move v1, v0

    .line 78
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasFmradio()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 52
    iget-byte v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 53
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 56
    :goto_0
    return v1

    .line 53
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :cond_1
    iput-byte v1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilderForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->toBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilder(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

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
    .line 85
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getSerializedSize()I

    .line 62
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 65
    :cond_0
    return-void
.end method
