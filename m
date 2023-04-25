Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 517796EDED7
	for <lists+tipc-discussion@lfdr.de>; Tue, 25 Apr 2023 11:13:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1prEk3-00077h-Nm;
	Tue, 25 Apr 2023 09:13:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1prEjv-00077a-L7
 for tipc-discussion@lists.sourceforge.net;
 Tue, 25 Apr 2023 09:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/2FQYjutZDI2/3m4LFENdYOz7SrWCT2VAejb5FQliMM=; b=PSi7RBgsmZmXa9adGM06eYhwhr
 bOF6aflFKWVi0BbVDFyw/yTXUS1cv65HLxjGOi5TgBUAmQhmzwG3V/io1IORny/U0kyYTMokDKFiv
 5YeVi9jqm46Ld18E7lVHS78cnNyi+Jd5WuFM5DBhHmx3ULypxtwmvaeZzuesJw8IVS2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/2FQYjutZDI2/3m4LFENdYOz7SrWCT2VAejb5FQliMM=; b=HK/O2JT6N7hccJoiGm+VZK5Bta
 qhJmPRn3wIc+wZPcDtwfEns/51dWbpNSmR5Mj8Qpv6gdV7MEcWQDvM58rmOItmw3/02RCASYbPguD
 +k8+Fl4hyF99VcdPI238pleP3HVEgExwQpQgRnxQweK77Th5dP41M3DEJjWi4CahFsLk=;
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1prEjs-000oDa-33 for tipc-discussion@lists.sourceforge.net;
 Tue, 25 Apr 2023 09:13:36 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 006d021491bc7-549f0b4606cso30358eaf.2
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 25 Apr 2023 02:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682414006; x=1685006006;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/2FQYjutZDI2/3m4LFENdYOz7SrWCT2VAejb5FQliMM=;
 b=C162LTl76yGbPKE001YUkCHzo/+J8H/qCo6RiGVVl+BWpkMZR+OKHInbs3agAuY4fZ
 Gop0L0SHctbhMVPbgNZFMPlMPRBaeA9a4Djk8oBUyIBsdLGuomqEiTUCCwKhFouMSwOG
 4PTI2qWQi9Sj6llxASgJnIDCQEAixAvTC8YU//d7ah5xmnjBwBSOdLoRCJB8yN9yexFR
 ACC206t4yvX9sEQYman8isT9Twss3yf27xWh/q4cfDhGZlfnVazw6KVW4nuYd67ksWMz
 fkek6RhfRkLkhyY0tO3Tazt0i9M74BoQLWlj2GqhdKDpwlDLrteitGVEUmN41q4kJ9PK
 Ar4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682414006; x=1685006006;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/2FQYjutZDI2/3m4LFENdYOz7SrWCT2VAejb5FQliMM=;
 b=B+edkKBurvAcbishT1Re2yKHL3a4F/6fu8vz/EO9emtFWGFSdka6lV5m++qH2m+udM
 dqnP3A4ch2gOzFFVzoSvhQ/1JHlWDLVOMpuI5ztVrCdTtE2PCYJNEm0jDh6lquGjAGmK
 AOyAmCl/SSd35plWv/9oN6L0DHQ0Mvf+kG0hWoR/GJTYbNG4QdhBv+8tVuFxJWcRwbwa
 ntmDJBut9SiPRxBRvUhTetbeEQKNrMzdXQTca/M+LhhZ4C317mHNyec2UgWI67kf54X9
 F2KTx9DxWf5xE2QnbPuoiy9b7kwnbImaA/ZaBZHAwsUhFrxAIODQYAf2iNdm33AyTQzF
 yLrQ==
X-Gm-Message-State: AAQBX9c8EPIqBXmtyf+vX0WvgK2mfg0GT4I/M0fK3pw2WWu5igEOpPQq
 TsMMwQwktBsbF8qHvBh+wwhsOhbHVJnCEMhAbVg=
X-Google-Smtp-Source: AKy350aUeQaBtseSr5hWEqhzIGN/Ex7rE0dII6L0l5KyGS/yxOK/+c+MCCzANtVANqsOTmqZU+4lGPGmgFZLDrm8aCk=
X-Received: by 2002:a05:6808:15a9:b0:38c:5ad4:6cf5 with SMTP id
 t41-20020a05680815a900b0038c5ad46cf5mr9532122oiw.36.1682414006305; Tue, 25
 Apr 2023 02:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
 <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
 <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: prakash bisht <ps13.bisht@gmail.com>
Date: Tue, 25 Apr 2023 14:43:14 +0530
Message-ID: <CACB1WsQ03cxhCDBLUCKp4gXEnqSYLG-NbVST02PQCLgx_a-azA@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks Tung. Please find my response inline. Thanks and regards,
    Prakash On Tue, Apr 18, 2023 at 7:04 AM Tung Quang Nguyen < wrote: 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.161.43 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.43 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ps13.bisht[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1prEjs-000oDa-33
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC socket ( SOCK_SEQPACKET) cleanup issue
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Xin Long <lxin@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

VGhhbmtzIFR1bmcuClBsZWFzZSBmaW5kIG15IHJlc3BvbnNlIGlubGluZS4KCgpUaGFua3MgYW5k
IHJlZ2FyZHMsClByYWthc2gKCk9uIFR1ZSwgQXByIDE4LCAyMDIzIGF0IDc6MDTigK9BTSBUdW5n
IFF1YW5nIE5ndXllbiA8CnR1bmcucS5uZ3V5ZW5AZGVrdGVjaC5jb20uYXU+IHdyb3RlOgoKPgo+
Cj4KPgo+ICpGcm9tOiogcHJha2FzaCBiaXNodCA8cHMxMy5iaXNodEBnbWFpbC5jb20+Cj4gKlNl
bnQ6KiBNb25kYXksIEFwcmlsIDE3LCAyMDIzIDExOjIwIEFNCj4gKlRvOiogdGlwYy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgWGluIExvbmcgPGx4aW5AcmVkaGF0LmNvbT47Cj4g
VHVuZyBRdWFuZyBOZ3V5ZW4gPHR1bmcucS5uZ3V5ZW5AZGVrdGVjaC5jb20uYXU+OyBqbWFsb3lA
cmVkaGF0LmNvbQo+ICpTdWJqZWN0OiogRndkOiBUSVBDIHNvY2tldCAoIFNPQ0tfU0VRUEFDS0VU
KSBjbGVhbnVwIGlzc3VlCj4KPgo+Cj4gSGkgSm9obi9YaW4sVHVuZywKPgo+Cj4KPiBBbnkgdGhv
dWdodHMgb24gbXkgcHJldmlvdXMgZW1haWw/IFdlIGFyZSB1c2luZyB0aXBjIGZvciBvdXIgcHJv
ZHVjdCBmb3IKPiBxdWl0ZSBhIHdoaWxlIGFuZCBzdGFydGVkIGZhY2luZyB0aGlzIGlzc3VlIHJl
Y2VudGx5IGluIGEgc3BlY2lmaWMgc2NlbmFyaW8KPiB3ZSBsYXVuY2ggc3RyYWNlIHRvIG1vbml0
b3IgYW5vdGhlciBwcm9jZXNzLgo+Cj4gQWxzbyBpcyB0aGVyZSBhbnkgd2F5IHRvIGRlbnkgY3Jl
YXRpb24gb2YgYW5vdGhlciB0aXBjIHNvY2tldCB3aXRoIHRoZQo+IHNhbWUgdGlwYyBhZGRyZXNz
ID8gIEluIG91ciBjYXNlIGFwcGxpY2F0aW9ucyBuZWVkIGEgdW5pcXVlIHRpcGMgc2VydmVyCj4g
c29ja2V0Lgo+Cj4gPj4+IFRoZXJlIGlzIG5vIGxpbWl0YXRpb24gZm9yIGNyZWF0aW5nIG1hbnkg
c29ja2V0cyBiaW5kaW5nIHRvIHRoZSBzYW1lCj4gdGlwYyBhZGRyZXNzLiBXaHkgeW91IG5lZWQg
4oCcYSB1bmlxdWUgdGlwYyBzZXJ2ZXIgc29ja2V04oCdID8gQ2FuIHlvdSBwcm92aWRlCj4geW91
ciBjb2RlIHRvIGRlbW9uc3RyYXRlIHlvdXIgdXNlIGNhc2UgPwo+CgoKPiAqW1ByYWthc2hdKiBX
ZSBoYXZlIHNlcnZpY2VzIHdoaWNoIGFyZSB1bmlxdWUgaW4gb3VyIHN5c3RlbSBhbmQgbm90IG1l
YW50Cj4gZm9yIGxvYWQgYmFsYW5jaW5nLiBFYWNoIHNlcnZpY2UgaXMgdW5pcXVlbHkgcmVwcmVz
ZW50ZWQgYnkgYSB0aXBjIHNlcnZpY2UKPiBhZGRyZXNzKHR5cGUsaW5zdGFuY2UpLiAgV2hhdCB3
ZSBhcmUgbG9va2luZyBmb3IgaXMgdGhhdCBpZiBzb21lb25lIGJ5Cj4gbWlzdGFrZSBjcmVhdGVz
IGEgc2Vjb25kIFNlcnZpY2UgdXNpbmcgdGhlIHNhbWUgYWRkcmVzcyh0eXBlLGluc3RhbmNlKSB0
aGVuCj4gdGhlIHNlcnZpY2UgY3JlYXRpb24gZmFpbCBhbmQgdGhyb3cgYW4gZXJyb3IuIFRoaXMg
aXMganVzdCB0byBhdm9pZCBhCj4gc2lsZW50IGZhaWx1cmUuCj4KCgoKPgo+Cj4gVGhhbmtzIGFu
ZCBSZWdhcmRzLAo+Cj4gUHJha2FzaAo+Cj4gLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAt
LS0tLS0tLS0KPiBGcm9tOiAqcHJha2FzaCBiaXNodCogPHBzMTMuYmlzaHRAZ21haWwuY29tPgo+
IERhdGU6IE1vbiwgQXByIDMsIDIwMjMgYXQgNDozM+KAr1BNCj4gU3ViamVjdDogVElQQyBzb2Nr
ZXQgKCBTT0NLX1NFUVBBQ0tFVCkgY2xlYW51cCBpc3N1ZQo+IFRvOiA8dGlwYy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KPgo+Cj4KPiBIaSBhbGwsCj4KPgo+Cj4gSSBhbSBmYWNp
bmcgYW4gaXNzdWUgd2hpbGUgY2xvc2luZyB0aGUgVElQQyBzZXJ2ZXIgc29ja2V0LiBJbiBjZXJ0
YWluCj4gc2NlbmFyaW9zLCBldmVuIGFmdGVyIGNsb3NpbmcgdGhlIHNlcnZlciBzb2NrZXQgZmQg
dGhlIOKAmHRpcGMgc29ja2V0IGxpc3TigJkKPiBpcyBzdGlsbCBzaG93aW5nIGl0IGFzIGFsaXZl
Lgo+Cj4gPj4+IFdoYXQgaXMgeW91IGlwcm91dGUyIHZlcnNpb24gPyBDYW4geW91IHByb3ZpZGUg
eW91ciBjb2RlIHRvCj4gZGVtb25zdHJhdGUgeW91ciB1c2UgY2FzZSA/Cj4KCgo+ICpbUHJha2Fz
aCBdKiAgV2UgYXJlIHVzaW5nIGlwcm91dGUyIHZlcnNpb24tNC4yMC4wLTIrZGViMTB1MSBvbiBh
bWQ2NAo+IHBsYXRmb3JtLiBPdXIgdXNlIGNhc2UgaXMgdmVyeSBzaW1wbGUuIFdlIGFyZSBjcmVh
dGluZy9kZXN0cm95aW5nIGEgc2VydmVyCj4gc29ja2V0IGJhc2VkIG9uIHNvbWUgZXZlbnQgdXNp
bmcgYmVsb3cgY29kZS4KPgogICAgICAvLyBzZXJ2ZXIgc29ja2V0IGNyZWF0aW9uCiAgICAgICAg
ICAgaW50IHNkID0gc29ja2V0KEFGX1RJUEMsIFNPQ0tfU0VRUEFDS0VULCAwKTsKICAgICAgLy8g
Q2xvc2luZyBzZXJ2ZXIgc29ja2V0CiAgICAgICAgICBjbG9zZShzZCk7CgogICAgICBBZnRlciBj
bG9zaW5nIHRoZSBzb2NrZXQgdGhlIGZpbGUgZGVzY3JpcHRvciBpcyBmcmVlZCBidXQgdGhlIHRp
cGMKc29ja2V0IGlzIHN0aWxsIHByZXNlbnQgaW4gInRpcGMgc29ja2V0IGxpc3QiIG91dHB1dC4K
ICAgICAgV2UgaGF2ZSBtdWx0aXBsZSBhcHBsaWNhdGlvbnMgaW4gb3VyIHN5c3RlbSB3aGljaCBh
cmUgdXNpbmcgdGlwYwpzb2NrZXRzLiBCdXQgd2Ugc2VlIHRoaXMgYmVoYXZpb3VyKHN0YWxlIHRp
cGMgc29ja2V0KSBvbmx5IGluIG9uZQphcHBsaWNhdGlvbi4KICAgICAgVGhlIG9ubHkgZGlmZmVy
ZW5jZSB3aGljaCBJIGNhbiBub3RpY2UgaXMgdGhhdCB0aGlzIHBhcnRpY3VsYXIKYXBwbGljYXRp
b24gIGlzIHNwYXduaW5nICJzdHJhY2UiIHRvIG1vbml0b3Igc29tZSBvdGhlciBhcHBsaWNhdGlv
bi4gSSBhbQpub3Qgc3VyZSBidXQgaXQgbG9va3MgbGlrZSBzb21laG93IHJ1bm5pbmcgc3RyYWNl
IGlzIGFmZmVjdGluZyB0aXBjIHNvY2tldAoKICAgICAgIGNsZWFudXAuCgoKCj4gSSBhbSBzdXJl
IHRoYXQgdGhlIGZkIGhhcyBiZWVuIGNsb3NlZCBhcyB0aGUgbmV4dCBzb2NrZXQgY3JlYXRpb24g
cmVxdWVzdAo+IGdldHMgdGhlIHNhbWUgZmQgZnJvbSBsaW51eC4gRXZlbiB3aGVuIHRoZSBwcm9j
ZXNzIGV4aXRzLCB0aGUgc3RhbGUgc29ja2V0Cj4gZW50cnkgaXMgc3RpbGwgcHJlc2VudCBpbiB0
aGUg4oCYdGlwYyBzb2NrZXQgbGlzdOKAmSBhbmQgaXQgdmFuaXNoZXMgb25seSBhZnRlcgo+IHJl
Ym9vdGluZyB0aGUgc3lzdGVtLgo+Cj4gIEtlcm5lbCB2ZXJzaW9uIDogNC4xOS44MQo+Cj4gU29j
a2V0IHR5cGUgOiAgICAgIFNPQ0tfU0VRUEFDS0VUCj4KPgo+Cj4gQWxzbywgaXMgdGhlcmUgYW55
IHdheSBvZiBmaW5kaW5nIG91dCB3aGV0aGVyIGEgdGlwYyBzb2NrZXQgYmVsb25ncyB0bwo+IHdo
aWNoIGxpbnV4IHByb2Nlc3MgPwo+Cj4gPj4+IFRoZXJlIGlzIG5vIGNvbW1hbmQgdG8ga25vdyB3
aGljaCB0aXBjIHNvY2tldCBiZWxvbmdzIHRvIHdoaWNoIExpbnV4Cj4gcHJvY2Vzcy4gQnV0IHlv
dSBjYW4gdXNlIGZ1bmN0aW9uIGdldHNvY2tuYW1lKCkgdG8gcHJpbnQgb3V0IHRoZSBwb3J0IGlk
Cj4gYWZ0ZXIgY3JlYXRpbmcgYSBzb2NrZXQuIFRoZW4geW91IGtub3cgdGhlIGNyZWF0ZWQgc29j
a2V0IGJlbG9uZ3MgdG8gdGhlCj4gY2FsbGluZyBwcm9jZXNzLgo+ClsKCj4gICpbUHJha2FzaF0q
IFRoYW5rcy4gIGdldHNvY2tuYW1lKCkgc2hvdWxkIHNlcnZlciB0aGUgcHVycG9zZSBoZXJlLgo+
CgoKPiBXb3VsZCBhcHByZWNpYXRlIGFueSBoZWxwLgo+Cj4KPgo+IFRoYW5rcywKPgo+IFByYWth
c2gKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlw
Yy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMt
ZGlzY3Vzc2lvbgo=
