.class public Lcom/android/settings_ext/tts/e;
.super Lmiui/preference/RadioButtonPreference;
.source "TtsEnginePreference.java"


# instance fields
.field private abP:Landroid/widget/RadioButton;

.field private final ala:Landroid/app/Activity;

.field private final alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final alc:Lcom/android/settings_ext/tts/k;

.field private volatile ald:Z

.field private ale:Landroid/view/View;

.field private alf:Landroid/content/Intent;

.field private final alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings_ext/tts/k;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/android/settings_ext/tts/f;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/tts/f;-><init>(Lcom/android/settings_ext/tts/e;)V

    iput-object v0, p0, Lcom/android/settings_ext/tts/e;->alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 112
    const v0, 0x7f0400c5

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/tts/e;->setWidgetLayoutResource(I)V

    .line 114
    iput-object p3, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    .line 115
    iput-object p4, p0, Lcom/android/settings_ext/tts/e;->ala:Landroid/app/Activity;

    .line 116
    iput-object p2, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/tts/e;->ald:Z

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/tts/e;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/tts/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/tts/e;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 217
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying data alert for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/tts/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/tts/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090744

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 229
    return-void
.end method

.method private a(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/settings_ext/tts/e;->ald:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    if-eqz p2, :cond_3

    .line 243
    invoke-direct {p0}, Lcom/android/settings_ext/tts/e;->sg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Lcom/android/settings_ext/tts/i;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/tts/i;-><init>(Lcom/android/settings_ext/tts/e;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings_ext/tts/j;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/tts/j;-><init>(Lcom/android/settings_ext/tts/e;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/tts/e;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings_ext/tts/e;->b(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/tts/e;Landroid/widget/Checkable;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ext/tts/e;->b(Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/tts/e;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/tts/e;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/tts/e;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alf:Landroid/content/Intent;

    return-object v0
.end method

.method private b(Landroid/widget/Checkable;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v0}, Lcom/android/settings_ext/tts/k;->se()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v0}, Lcom/android/settings_ext/tts/k;->se()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v0, p1}, Lcom/android/settings_ext/tts/k;->a(Landroid/widget/Checkable;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-virtual {p0}, Lcom/android/settings_ext/tts/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ext/tts/k;->bA(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v0}, Lcom/android/settings_ext/tts/k;->sf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/tts/e;->callChangeListener(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/tts/e;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ala:Landroid/app/Activity;

    return-object v0
.end method

.method private sg()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alb:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 133
    const v0, 0x1020001

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 134
    iget-object v4, p0, Lcom/android/settings_ext/tts/e;->alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ext/tts/e;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v5}, Lcom/android/settings_ext/tts/k;->sf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 137
    if-eqz v4, :cond_1

    .line 138
    iget-object v5, p0, Lcom/android/settings_ext/tts/e;->alc:Lcom/android/settings_ext/tts/k;

    invoke-interface {v5, v0}, Lcom/android/settings_ext/tts/k;->a(Landroid/widget/Checkable;)V

    .line 141
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings_ext/tts/e;->ald:Z

    .line 142
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 143
    iput-boolean v2, p0, Lcom/android/settings_ext/tts/e;->ald:Z

    .line 145
    iput-object v0, p0, Lcom/android/settings_ext/tts/e;->abP:Landroid/widget/RadioButton;

    .line 150
    new-instance v5, Lcom/android/settings_ext/tts/g;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ext/tts/g;-><init>(Lcom/android/settings_ext/tts/e;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f1001ca

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    .line 160
    iget-object v5, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alf:Landroid/content/Intent;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    if-nez v4, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ext/tts/h;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/tts/h;-><init>(Lcom/android/settings_ext/tts/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->alf:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ext/tts/e;->abP:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    :cond_3
    return-object v3

    :cond_4
    move v0, v2

    .line 160
    goto :goto_0
.end method

.method public t(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ext/tts/e;->alf:Landroid/content/Intent;

    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->abP:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->abP:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/tts/e;->ale:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
