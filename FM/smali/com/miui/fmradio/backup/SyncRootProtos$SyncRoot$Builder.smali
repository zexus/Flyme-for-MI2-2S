.class public final Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/SyncRootProtos$SyncRootOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;",
        "Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;",
        ">;",
        "Lcom/miui/fmradio/backup/SyncRootProtos$SyncRootOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 267
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 168
    invoke-direct {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->maybeForceBuilderInitialization()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildParsed()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 203
    .local v0, "result":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-static {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 207
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 194
    .local v0, "result":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 197
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 5

    .prologue
    .line 211
    new-instance v1, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;Lcom/miui/fmradio/backup/SyncRootProtos$1;)V

    .line 212
    .local v1, "result":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 213
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 214
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 215
    or-int/lit8 v2, v2, 0x1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    # setter for: Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->access$302(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 218
    # setter for: Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->access$402(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;I)I

    .line 219
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clear()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 179
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 180
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 181
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->create()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->buildPartial()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

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
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->clone()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getDefaultInstance()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getFmradio()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    return-object v0
.end method

.method public hasFmradio()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFmradio(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 2
    .param p1, "value"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 291
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    invoke-static {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 299
    :goto_0
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 300
    return-object p0

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    goto :goto_0
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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 162
    check-cast p1, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 240
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 245
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    :sswitch_0
    return-object p0

    .line 252
    :sswitch_1
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    .line 253
    .local v0, "subBuilder":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->hasFmradio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->getFmradio()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    .line 256
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 257
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->setFmradio(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .param p1, "other"    # Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    .prologue
    .line 223
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getDefaultInstance()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object p0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->hasFmradio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getFmradio()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->mergeFmradio(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    goto :goto_0
.end method

.method public setFmradio(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    .locals 1
    .param p1, "value"    # Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->fmradio_:Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    .line 280
    iget v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->bitField0_:I

    .line 281
    return-object p0
.end method
