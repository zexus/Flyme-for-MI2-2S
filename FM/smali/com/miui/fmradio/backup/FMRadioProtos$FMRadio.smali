.class public final Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FMRadioProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/FMRadioProtos$FMRadioOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/FMRadioProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FMRadio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private stationEntry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;-><init>(Z)V

    sput-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 1091
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->initFields()V

    .line 1092
    return-void
.end method

.method private constructor <init>(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    .prologue
    const/4 v0, -0x1

    .line 741
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 778
    iput-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedIsInitialized:B

    .line 795
    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedSerializedSize:I

    .line 742
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;Lcom/miui/fmradio/backup/FMRadioProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .param p2, "x1"    # Lcom/miui/fmradio/backup/FMRadioProtos$1;

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;-><init>(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 743
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 778
    iput-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedIsInitialized:B

    .line 795
    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedSerializedSize:I

    .line 743
    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 1

    .prologue
    .line 747
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 776
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    .line 777
    return-void
.end method

.method public static newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 883
    # invokes: Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->access$1000()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 886
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 1

    .prologue
    .line 751
    sget-object v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->defaultInstance:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 797
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedSerializedSize:I

    .line 798
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 806
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 800
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 802
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 805
    :cond_1
    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedSerializedSize:I

    move v2, v1

    .line 806
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getStationEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 780
    iget-byte v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedIsInitialized:B

    .line 781
    .local v0, "isInitialized":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 784
    :goto_0
    return v1

    .line 781
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 783
    :cond_1
    iput-byte v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilderForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 884
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->toBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 888
    invoke-static {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

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
    .line 813
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getSerializedSize()I

    .line 790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 791
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :cond_0
    return-void
.end method
