.class public Lcom/android/camera/ui/ManualSeekBar;
.super Landroid/widget/LinearLayout;
.source "ManualSeekBar.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSeekBar:Lcom/android/camera/ui/V6SeekBar;

.field private mSmooth:Z

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;Z)V
    .locals 3
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p2, "smooth"    # Z

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 56
    iput-boolean p2, p0, Lcom/android/camera/ui/ManualSeekBar;->mSmooth:Z

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setSmoothChange(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setMaxValue(I)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    iget-object v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SeekBar;->getMaxValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SeekBar;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    .line 78
    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "touchUp"    # Z

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSmooth:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 34
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    .line 36
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSmooth:Z

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mListener:Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSmooth:Z

    if-eqz v0, :cond_4

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mListener:Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;->onSettingChanged()V

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 52
    :cond_5
    return-void

    .line 41
    :cond_6
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSmooth:Z

    if-eqz v0, :cond_8

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mValueText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/ManualSeekBar;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/ManualSeekBar;->mSeekBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/ManualSeekBar;->mListener:Lcom/android/camera/ui/ManualSeekBar$OnSettingChangedListener;

    .line 70
    return-void
.end method
