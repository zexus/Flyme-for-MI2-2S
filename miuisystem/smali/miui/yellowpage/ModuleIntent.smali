.class public Lmiui/yellowpage/ModuleIntent;
.super Ljava/lang/Object;
.source "ModuleIntent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b11fbb892e95L


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mModuleId:I

.field private mSubItemsFlag:Z

.field private mSubModuleIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "moduleId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    .line 19
    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;IZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "moduleId"    # I
    .param p4, "subItemsFlag"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    .line 25
    iput p3, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    .line 26
    iput-boolean p4, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lmiui/yellowpage/ModuleIntent;->mModuleId:I

    return v0
.end method

.method public getSubItemsFlag()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubItemsFlag:Z

    return v0
.end method

.method public getSubModuleIntent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/yellowpage/ModuleIntent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setSubModuleIntent(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "subModuleIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    iput-object p1, p0, Lmiui/yellowpage/ModuleIntent;->mSubModuleIntent:Ljava/util/ArrayList;

    .line 51
    return-void
.end method
