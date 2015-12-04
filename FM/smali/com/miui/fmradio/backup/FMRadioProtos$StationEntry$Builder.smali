.class public final Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FMRadioProtos.java"

# interfaces
.implements Lcom/miui/fmradio/backup/FMRadioProtos$StationEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;",
        "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;",
        ">;",
        "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private frequency_:I

.field private guid_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->guid_:Ljava/lang/Object;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->luid_:Ljava/lang/Object;

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->label_:Ljava/lang/Object;

    .line 416
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->maybeForceBuilderInitialization()V

    .line 417
    return-void
.end method

.method static synthetic access$100()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    invoke-direct {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->build()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    .line 450
    .local v0, "result":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    invoke-static {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 453
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .locals 5

    .prologue
    .line 467
    new-instance v1, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;-><init>(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;Lcom/miui/fmradio/backup/FMRadioProtos$1;)V

    .line 468
    .local v1, "result":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 469
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 470
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 471
    or-int/lit8 v2, v2, 0x1

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->guid_:Ljava/lang/Object;

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$302(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 475
    or-int/lit8 v2, v2, 0x2

    .line 477
    :cond_1
    iget-object v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->luid_:Ljava/lang/Object;

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$402(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 479
    or-int/lit8 v2, v2, 0x4

    .line 481
    :cond_2
    iget-object v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->label_:Ljava/lang/Object;

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$502(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 483
    or-int/lit8 v2, v2, 0x8

    .line 485
    :cond_3
    iget v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->frequency_:I

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->frequency_:I
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$602(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I

    .line 486
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 487
    or-int/lit8 v2, v2, 0x10

    .line 489
    :cond_4
    iget v3, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->type_:I

    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->type_:I
    invoke-static {v1, v3}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$702(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I

    .line 490
    # setter for: Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->access$802(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;I)I

    .line 491
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clear()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clear()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->guid_:Ljava/lang/Object;

    .line 428
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->luid_:Ljava/lang/Object;

    .line 430
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->label_:Ljava/lang/Object;

    .line 432
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 433
    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->frequency_:I

    .line 434
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 435
    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->type_:I

    .line 436
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 437
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->create()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->buildPartial()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

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
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->clone()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 515
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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 410
    check-cast p1, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

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
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 524
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 529
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    :sswitch_0
    return-object p0

    .line 536
    :sswitch_1
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 537
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 541
    :sswitch_2
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 542
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 546
    :sswitch_3
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 547
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 551
    :sswitch_4
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 552
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->frequency_:I

    goto :goto_0

    .line 556
    :sswitch_5
    iget v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 557
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->type_:I

    goto :goto_0

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "other"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .prologue
    .line 495
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getDefaultInstance()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-object p0

    .line 496
    :cond_1
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 502
    :cond_3
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 505
    :cond_4
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->hasFrequency()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setFrequency(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 508
    :cond_5
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setType(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    goto :goto_0
.end method

.method public setFrequency(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 683
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 684
    iput p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->frequency_:I

    .line 686
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 585
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 586
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->guid_:Ljava/lang/Object;

    .line 588
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 658
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->label_:Ljava/lang/Object;

    .line 660
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 622
    iput-object p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->luid_:Ljava/lang/Object;

    .line 624
    return-object p0
.end method

.method public setType(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 704
    iget v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->bitField0_:I

    .line 705
    iput p1, p0, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->type_:I

    .line 707
    return-object p0
.end method
