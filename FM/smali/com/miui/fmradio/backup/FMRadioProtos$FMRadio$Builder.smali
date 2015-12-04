.class public final Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FMRadioProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/FMRadioProtos$FMRadioOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;",
        "Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;",
        ">;",
        "Lcom/miui/fmradio/backup/FMRadioProtos$FMRadioOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    .line 896
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->maybeForceBuilderInitialization()V

    .line 897
    return-void
.end method

.method static synthetic access$1000()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 902
    new-instance v0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStationEntryIsMutable()V
    .locals 2

    .prologue
    .line 1001
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    .line 1003
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    .line 1005
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method


# virtual methods
.method public addStationEntry(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1
    .param p1, "value"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->ensureStationEntryIsMutable()V

    .line 1038
    iget-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->build()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 2

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    .line 922
    .local v0, "result":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-static {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 925
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 4

    .prologue
    .line 939
    new-instance v1, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;-><init>(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;Lcom/miui/fmradio/backup/FMRadioProtos$1;)V

    .line 940
    .local v1, "result":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    .line 941
    .local v0, "from_bitField0_":I
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 942
    iget-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    .line 943
    iget v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    .line 945
    :cond_0
    iget-object v2, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->access$1202(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;Ljava/util/List;)Ljava/util/List;

    .line 946
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clear()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clear()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 1

    .prologue
    .line 906
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    .line 908
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    .line 909
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 2

    .prologue
    .line 913
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 1

    .prologue
    .line 917
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 890
    check-cast p1, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 974
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 979
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    :sswitch_0
    return-object p0

    .line 986
    :sswitch_1
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    .line 987
    .local v0, "subBuilder":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 988
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->addStationEntry(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    goto :goto_0

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    .locals 2
    .param p1, "other"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 950
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-object p0

    .line 951
    :cond_1
    # getter for: Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->access$1200(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    # getter for: Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->access$1200(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    .line 954
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->bitField0_:I

    goto :goto_0

    .line 956
    :cond_2
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->ensureStationEntryIsMutable()V

    .line 957
    iget-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->stationEntry_:Ljava/util/List;

    # getter for: Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->stationEntry_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->access$1200(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
