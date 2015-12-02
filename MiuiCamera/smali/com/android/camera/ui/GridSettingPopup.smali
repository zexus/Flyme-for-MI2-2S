.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field protected mDisplayColumnNum:I

.field protected mGridView:Landroid/widget/GridView;

.field protected mGridViewHeight:I

.field protected mHasImage:Z

.field protected mIgnoreSameItemClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    .line 37
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 13
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 41
    invoke-super/range {p0 .. p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    .local v2, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 44
    .local v7, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v10

    .line 45
    .local v10, "iconIds":[I
    if-nez v10, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v10

    .line 50
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, v7

    if-ge v9, v1, :cond_2

    .line 53
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v4, v7, v9

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-eqz v10, :cond_1

    const-string v1, "image"

    aget v4, v10, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v1, "pref_qc_camera_iso_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "image"

    aput-object v4, v5, v1

    .line 62
    .local v5, "from":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v4, 0x7f0c000b

    aput v4, v6, v1

    .line 70
    .local v6, "to":[I
    :goto_1
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    if-eqz v1, :cond_6

    const/high16 v4, 0x7f040000

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 75
    .local v0, "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    .line 76
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    array-length v4, v7

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 79
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iget v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    div-int v8, v1, v4

    .line 80
    .local v8, "gridItemWidth":I
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    array-length v1, v7

    mul-int/2addr v1, v8

    iget v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    invoke-direct {v12, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    .line 83
    return-void

    .line 63
    .end local v0    # "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    .end local v5    # "from":[Ljava/lang/String;
    .end local v6    # "to":[I
    .end local v8    # "gridItemWidth":I
    .end local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    if-eqz v10, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    if-nez v1, :cond_5

    .line 64
    :cond_4
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "text"

    aput-object v4, v5, v1

    .line 65
    .restart local v5    # "from":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v4, 0x7f0c000c

    aput v4, v6, v1

    .restart local v6    # "to":[I
    goto :goto_1

    .line 67
    .end local v5    # "from":[Ljava/lang/String;
    .end local v6    # "to":[I
    :cond_5
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "image"

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v5, v1

    .line 68
    .restart local v5    # "from":[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    .restart local v6    # "to":[I
    goto :goto_1

    .line 70
    :cond_6
    const v4, 0x7f040003

    goto :goto_2

    .line 75
    .restart local v0    # "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    :cond_7
    const/4 v1, 0x5

    goto :goto_3

    .line 68
    :array_0
    .array-data 4
        0x7f0c000b
        0x7f0c000c
    .end array-data
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 125
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, "index":I
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    if-nez v3, :cond_0

    .line 128
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_4

    move v2, v4

    .line 129
    .local v2, "sameItem":Z
    :goto_1
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 130
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 133
    const-string v3, "pref_camera_scenemode_key"

    iget-object v5, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 140
    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/GridSettingPopup;->notifyToDispatcher(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    goto :goto_0

    .line 128
    .end local v2    # "sameItem":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 135
    .restart local v2    # "sameItem":Z
    :cond_5
    const-string v3, "pref_audio_focus_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "audioFocus":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camcorder_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 166
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    .line 168
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 88
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "GridSettingPopup"

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    .line 157
    const-string v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;

    .prologue
    .line 121
    return-void
.end method
