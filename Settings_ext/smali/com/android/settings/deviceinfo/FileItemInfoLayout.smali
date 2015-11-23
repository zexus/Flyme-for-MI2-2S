.class public Lcom/android/settings/deviceinfo/FileItemInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "FileItemInfoLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final RG:I


# instance fields
.field private RE:Landroid/widget/TextView;

.field private RF:Landroid/widget/TextView;

.field private tI:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public aG(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RF:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->tI:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public nT()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->tI:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f100287

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RE:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100288

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RF:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f100286

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->tI:Landroid/widget/CheckBox;

    .line 53
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->tI:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RE:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->RG:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->tI:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setChecked(Z)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
