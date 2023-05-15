Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0527970234D
	for <lists+tipc-discussion@lfdr.de>; Mon, 15 May 2023 07:28:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pyQlK-0007BJ-9Z;
	Mon, 15 May 2023 05:28:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1pyQlI-0007BC-Kz
 for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 05:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wbp4EzCK1oqeTq9lvfVD8VqcvD3o7BTywxO/26plIgI=; b=mxnKQKhq6PIE1sc8L2/OQZfYOx
 3M3yTpY8mAcs/wPaJi8fFYsPSgD4noJM9i40ieb1tVw2rW8T8uLvCPQmK1uJIz8KowCeKbGJ6DdRH
 pLcouGSwVditG/92KErfyoJ/azGXcHWi56oKyOX/qz9yRaKG6NHcmilk2BEwXOm6GYus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wbp4EzCK1oqeTq9lvfVD8VqcvD3o7BTywxO/26plIgI=; b=UPy0NXP46W2F+v7yOxhJZK5AXl
 E3FZx+8Oc9R//0KHhJM1iJVlODLK0ytDndXhMXYIp1TVcoVz6yK4QHuYA+n/ZOeHhWM5HgCTT0S8L
 QCJnqLCLUKjzBuiYWFqmkIaibV1kRsvsqPS822wlErO1m16uBCPDhGLPsq37XbwIebrA=;
Received: from mail-oa1-f41.google.com ([209.85.160.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pyQlG-0001wD-NE for tipc-discussion@lists.sourceforge.net;
 Mon, 15 May 2023 05:28:44 +0000
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-1929818d7faso69643364fac.0
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 May 2023 22:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684128517; x=1686720517;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wbp4EzCK1oqeTq9lvfVD8VqcvD3o7BTywxO/26plIgI=;
 b=lQJDVDc6zWEQos5Q0pQMCGYXFruoWOtrYn16Uf7q2UjxcceMjsmetBKgNMDFMRjDJB
 IXT2o2MyfFYIkHG8ZWQ/L4DVFaU36kBV28LXVjJLK6Y36dmO4fDk6efoAbP9UQh6z17K
 Z1sbmh2u351lY5Gbqz4DsCUr9k+KCq8ywR2WGqH6OTvUTjEB8L8PVd3grZ6mxiYZf2VC
 SwuWOtdZ6nhNUSuwgqLQKZHnE1Jt7zhe///iyrx343T0ATbFmK3XhSxKEjCNum++17CL
 isoXX987kHMXr/Fe9Dt3Q6TLfzbmfSjXmEzZ2pWjp4Himc0lVUb5a1bJrLzKiHH25nMo
 8ADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684128517; x=1686720517;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wbp4EzCK1oqeTq9lvfVD8VqcvD3o7BTywxO/26plIgI=;
 b=jNSA6hnKmYc2jtrO36Mqr+d7bUAbPZJuFq0CAMk3GFPdm/vYBuekh3GFejb2rY8xou
 5GhxJ+78dLpGiui9SBm4wL7Dx16XKXR6m+1/IdU/Nnx9QH9IcsNAZiooRNAzxX67AXmH
 y+6Y2eFcbQWHBa7SngMYmCqfbHgYVLPLciDoFU6zSTUcsyKOB9UYyd3FQTbSSAzsSxBp
 Q8L7Fep+VCbqZR6yShSWHFDDbG2zDvxxThAHDY7TZ5Nch4VeLcAPIpVTvOzWiPxUlY+5
 Wn1Pu+LxR4F8pP2sm4DeIFlEjtuwma82LiQ3uzfwicB2ZKMytHMsJ7eE3utExlvVNjFl
 rwzQ==
X-Gm-Message-State: AC+VfDwmcZJTZsdfsgQNWIQxbErrqYgyh1xgXufnU2GkqQ2T8DMHiHqX
 LTsc2lWJQNPStCe8HYxLpu2HkZQMt8Pz9zf3W840QZt2
X-Google-Smtp-Source: ACHHUZ6OkpgJqvmql/HBRNDjoz1TYvaTwgeL17p5EhsWPzlIb6xmjZv5cvmlcOCyd/vPZE4JoqBakLvfZQdX3u+q98A=
X-Received: by 2002:a05:6870:3a28:b0:192:d231:1c27 with SMTP id
 du40-20020a0568703a2800b00192d2311c27mr14681402oab.26.1684128516907; Sun, 14
 May 2023 22:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <CACB1WsRUCkb6ZfNZ1fCQ=q_M6Zo0t-MuXouoxKWwgReRNCn9QQ@mail.gmail.com>
 <CACB1WsQswDHuvQrpHu_F=G6SM7MAZJ1RU=XAkOBgnw95KquM9g@mail.gmail.com>
 <DB9PR05MB9078720FB4FED1290AE929FC889D9@DB9PR05MB9078.eurprd05.prod.outlook.com>
 <CACB1WsQ03cxhCDBLUCKp4gXEnqSYLG-NbVST02PQCLgx_a-azA@mail.gmail.com>
In-Reply-To: <CACB1WsQ03cxhCDBLUCKp4gXEnqSYLG-NbVST02PQCLgx_a-azA@mail.gmail.com>
From: prakash bisht <ps13.bisht@gmail.com>
Date: Mon, 15 May 2023 10:58:29 +0530
Message-ID: <CACB1WsQ78_0R+2-EhocereqipRse7i6D87CJEYjMnrwJCLKUfQ@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Tung, Can you please share your thoughts. I have responded
    to your queries in my previous email. Please let me know if you need any
   additional information from my end. Thanks and regards, Prakash On Tue, Apr
    25, 2023 at 2:43 PM prakash bisht wrote: 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ps13.bisht[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.41 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pyQlG-0001wD-NE
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

SGkgVHVuZywKQ2FuIHlvdSBwbGVhc2Ugc2hhcmUgeW91ciB0aG91Z2h0cy4KSSBoYXZlIHJlc3Bv
bmRlZCB0byB5b3VyIHF1ZXJpZXMgaW4gbXkgcHJldmlvdXMgZW1haWwuIFBsZWFzZSBsZXQgbWUg
a25vdwppZiB5b3UgbmVlZCBhbnkgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiBmcm9tIG15IGVuZC4K
ClRoYW5rcyBhbmQgcmVnYXJkcywKUHJha2FzaAoKT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMjo0
M+KAr1BNIHByYWthc2ggYmlzaHQgPHBzMTMuYmlzaHRAZ21haWwuY29tPiB3cm90ZToKCj4gVGhh
bmtzIFR1bmcuCj4gUGxlYXNlIGZpbmQgbXkgcmVzcG9uc2UgaW5saW5lLgo+Cj4KPiBUaGFua3Mg
YW5kIHJlZ2FyZHMsCj4gUHJha2FzaAo+Cj4gT24gVHVlLCBBcHIgMTgsIDIwMjMgYXQgNzowNOKA
r0FNIFR1bmcgUXVhbmcgTmd1eWVuIDwKPiB0dW5nLnEubmd1eWVuQGRla3RlY2guY29tLmF1PiB3
cm90ZToKPgo+Pgo+Pgo+Pgo+Pgo+PiAqRnJvbToqIHByYWthc2ggYmlzaHQgPHBzMTMuYmlzaHRA
Z21haWwuY29tPgo+PiAqU2VudDoqIE1vbmRheSwgQXByaWwgMTcsIDIwMjMgMTE6MjAgQU0KPj4g
KlRvOiogdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgWGluIExvbmcgPGx4
aW5AcmVkaGF0LmNvbT47Cj4+IFR1bmcgUXVhbmcgTmd1eWVuIDx0dW5nLnEubmd1eWVuQGRla3Rl
Y2guY29tLmF1Pjsgam1hbG95QHJlZGhhdC5jb20KPj4gKlN1YmplY3Q6KiBGd2Q6IFRJUEMgc29j
a2V0ICggU09DS19TRVFQQUNLRVQpIGNsZWFudXAgaXNzdWUKPj4KPj4KPj4KPj4gSGkgSm9obi9Y
aW4sVHVuZywKPj4KPj4KPj4KPj4gQW55IHRob3VnaHRzIG9uIG15IHByZXZpb3VzIGVtYWlsPyBX
ZSBhcmUgdXNpbmcgdGlwYyBmb3Igb3VyIHByb2R1Y3QgZm9yCj4+IHF1aXRlIGEgd2hpbGUgYW5k
IHN0YXJ0ZWQgZmFjaW5nIHRoaXMgaXNzdWUgcmVjZW50bHkgaW4gYSBzcGVjaWZpYyBzY2VuYXJp
bwo+PiB3ZSBsYXVuY2ggc3RyYWNlIHRvIG1vbml0b3IgYW5vdGhlciBwcm9jZXNzLgo+Pgo+PiBB
bHNvIGlzIHRoZXJlIGFueSB3YXkgdG8gZGVueSBjcmVhdGlvbiBvZiBhbm90aGVyIHRpcGMgc29j
a2V0IHdpdGggdGhlCj4+IHNhbWUgdGlwYyBhZGRyZXNzID8gIEluIG91ciBjYXNlIGFwcGxpY2F0
aW9ucyBuZWVkIGEgdW5pcXVlIHRpcGMgc2VydmVyCj4+IHNvY2tldC4KPj4KPj4gPj4+IFRoZXJl
IGlzIG5vIGxpbWl0YXRpb24gZm9yIGNyZWF0aW5nIG1hbnkgc29ja2V0cyBiaW5kaW5nIHRvIHRo
ZSBzYW1lCj4+IHRpcGMgYWRkcmVzcy4gV2h5IHlvdSBuZWVkIOKAnGEgdW5pcXVlIHRpcGMgc2Vy
dmVyIHNvY2tldOKAnSA/IENhbiB5b3UgcHJvdmlkZQo+PiB5b3VyIGNvZGUgdG8gZGVtb25zdHJh
dGUgeW91ciB1c2UgY2FzZSA/Cj4+Cj4KPgo+PiAqW1ByYWthc2hdKiBXZSBoYXZlIHNlcnZpY2Vz
IHdoaWNoIGFyZSB1bmlxdWUgaW4gb3VyIHN5c3RlbSBhbmQgbm90Cj4+IG1lYW50IGZvciBsb2Fk
IGJhbGFuY2luZy4gRWFjaCBzZXJ2aWNlIGlzIHVuaXF1ZWx5IHJlcHJlc2VudGVkIGJ5IGEgdGlw
Ywo+PiBzZXJ2aWNlIGFkZHJlc3ModHlwZSxpbnN0YW5jZSkuICBXaGF0IHdlIGFyZSBsb29raW5n
IGZvciBpcyB0aGF0IGlmIHNvbWVvbmUKPj4gYnkgbWlzdGFrZSBjcmVhdGVzIGEgc2Vjb25kIFNl
cnZpY2UgdXNpbmcgdGhlIHNhbWUgYWRkcmVzcyh0eXBlLGluc3RhbmNlKQo+PiB0aGVuIHRoZSBz
ZXJ2aWNlIGNyZWF0aW9uIGZhaWwgYW5kIHRocm93IGFuIGVycm9yLiBUaGlzIGlzIGp1c3QgdG8g
YXZvaWQgYQo+PiBzaWxlbnQgZmFpbHVyZS4KPj4KPgo+Cj4KPj4KPj4KPj4gVGhhbmtzIGFuZCBS
ZWdhcmRzLAo+Pgo+PiBQcmFrYXNoCj4+Cj4+IC0tLS0tLS0tLS0gRm9yd2FyZGVkIG1lc3NhZ2Ug
LS0tLS0tLS0tCj4+IEZyb206ICpwcmFrYXNoIGJpc2h0KiA8cHMxMy5iaXNodEBnbWFpbC5jb20+
Cj4+IERhdGU6IE1vbiwgQXByIDMsIDIwMjMgYXQgNDozM+KAr1BNCj4+IFN1YmplY3Q6IFRJUEMg
c29ja2V0ICggU09DS19TRVFQQUNLRVQpIGNsZWFudXAgaXNzdWUKPj4gVG86IDx0aXBjLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Pgo+Pgo+Pgo+Pgo+PiBIaSBhbGwsCj4+Cj4+Cj4+
Cj4+IEkgYW0gZmFjaW5nIGFuIGlzc3VlIHdoaWxlIGNsb3NpbmcgdGhlIFRJUEMgc2VydmVyIHNv
Y2tldC4gSW4gY2VydGFpbgo+PiBzY2VuYXJpb3MsIGV2ZW4gYWZ0ZXIgY2xvc2luZyB0aGUgc2Vy
dmVyIHNvY2tldCBmZCB0aGUg4oCYdGlwYyBzb2NrZXQgbGlzdOKAmQo+PiBpcyBzdGlsbCBzaG93
aW5nIGl0IGFzIGFsaXZlLgo+Pgo+PiA+Pj4gV2hhdCBpcyB5b3UgaXByb3V0ZTIgdmVyc2lvbiA/
IENhbiB5b3UgcHJvdmlkZSB5b3VyIGNvZGUgdG8KPj4gZGVtb25zdHJhdGUgeW91ciB1c2UgY2Fz
ZSA/Cj4+Cj4KPgo+PiAqW1ByYWthc2ggXSogIFdlIGFyZSB1c2luZyBpcHJvdXRlMiB2ZXJzaW9u
LTQuMjAuMC0yK2RlYjEwdTEgb24gYW1kNjQKPj4gcGxhdGZvcm0uIE91ciB1c2UgY2FzZSBpcyB2
ZXJ5IHNpbXBsZS4gV2UgYXJlIGNyZWF0aW5nL2Rlc3Ryb3lpbmcgYSBzZXJ2ZXIKPj4gc29ja2V0
IGJhc2VkIG9uIHNvbWUgZXZlbnQgdXNpbmcgYmVsb3cgY29kZS4KPj4KPiAgICAgICAvLyBzZXJ2
ZXIgc29ja2V0IGNyZWF0aW9uCj4gICAgICAgICAgICBpbnQgc2QgPSBzb2NrZXQoQUZfVElQQywg
U09DS19TRVFQQUNLRVQsIDApOwo+ICAgICAgIC8vIENsb3Npbmcgc2VydmVyIHNvY2tldAo+ICAg
ICAgICAgICBjbG9zZShzZCk7Cj4KPiAgICAgICBBZnRlciBjbG9zaW5nIHRoZSBzb2NrZXQgdGhl
IGZpbGUgZGVzY3JpcHRvciBpcyBmcmVlZCBidXQgdGhlIHRpcGMKPiBzb2NrZXQgaXMgc3RpbGwg
cHJlc2VudCBpbiAidGlwYyBzb2NrZXQgbGlzdCIgb3V0cHV0Lgo+ICAgICAgIFdlIGhhdmUgbXVs
dGlwbGUgYXBwbGljYXRpb25zIGluIG91ciBzeXN0ZW0gd2hpY2ggYXJlIHVzaW5nIHRpcGMKPiBz
b2NrZXRzLiBCdXQgd2Ugc2VlIHRoaXMgYmVoYXZpb3VyKHN0YWxlIHRpcGMgc29ja2V0KSBvbmx5
IGluIG9uZQo+IGFwcGxpY2F0aW9uLgo+ICAgICAgIFRoZSBvbmx5IGRpZmZlcmVuY2Ugd2hpY2gg
SSBjYW4gbm90aWNlIGlzIHRoYXQgdGhpcyBwYXJ0aWN1bGFyCj4gYXBwbGljYXRpb24gIGlzIHNw
YXduaW5nICJzdHJhY2UiIHRvIG1vbml0b3Igc29tZSBvdGhlciBhcHBsaWNhdGlvbi4gSSBhbQo+
IG5vdCBzdXJlIGJ1dCBpdCBsb29rcyBsaWtlIHNvbWVob3cgcnVubmluZyBzdHJhY2UgaXMgYWZm
ZWN0aW5nIHRpcGMgc29ja2V0Cj4KPiAgICAgICAgY2xlYW51cC4KPgo+Cj4KPj4gSSBhbSBzdXJl
IHRoYXQgdGhlIGZkIGhhcyBiZWVuIGNsb3NlZCBhcyB0aGUgbmV4dCBzb2NrZXQgY3JlYXRpb24g
cmVxdWVzdAo+PiBnZXRzIHRoZSBzYW1lIGZkIGZyb20gbGludXguIEV2ZW4gd2hlbiB0aGUgcHJv
Y2VzcyBleGl0cywgdGhlIHN0YWxlIHNvY2tldAo+PiBlbnRyeSBpcyBzdGlsbCBwcmVzZW50IGlu
IHRoZSDigJh0aXBjIHNvY2tldCBsaXN04oCZIGFuZCBpdCB2YW5pc2hlcyBvbmx5IGFmdGVyCj4+
IHJlYm9vdGluZyB0aGUgc3lzdGVtLgo+Pgo+PiAgS2VybmVsIHZlcnNpb24gOiA0LjE5LjgxCj4+
Cj4+IFNvY2tldCB0eXBlIDogICAgICBTT0NLX1NFUVBBQ0tFVAo+Pgo+Pgo+Pgo+PiBBbHNvLCBp
cyB0aGVyZSBhbnkgd2F5IG9mIGZpbmRpbmcgb3V0IHdoZXRoZXIgYSB0aXBjIHNvY2tldCBiZWxv
bmdzIHRvCj4+IHdoaWNoIGxpbnV4IHByb2Nlc3MgPwo+Pgo+PiA+Pj4gVGhlcmUgaXMgbm8gY29t
bWFuZCB0byBrbm93IHdoaWNoIHRpcGMgc29ja2V0IGJlbG9uZ3MgdG8gd2hpY2ggTGludXgKPj4g
cHJvY2Vzcy4gQnV0IHlvdSBjYW4gdXNlIGZ1bmN0aW9uIGdldHNvY2tuYW1lKCkgdG8gcHJpbnQg
b3V0IHRoZSBwb3J0IGlkCj4+IGFmdGVyIGNyZWF0aW5nIGEgc29ja2V0LiBUaGVuIHlvdSBrbm93
IHRoZSBjcmVhdGVkIHNvY2tldCBiZWxvbmdzIHRvIHRoZQo+PiBjYWxsaW5nIHByb2Nlc3MuCj4+
Cj4gWwo+Cj4+ICAqW1ByYWthc2hdKiBUaGFua3MuICBnZXRzb2NrbmFtZSgpIHNob3VsZCBzZXJ2
ZXIgdGhlIHB1cnBvc2UgaGVyZS4KPj4KPgo+Cj4+IFdvdWxkIGFwcHJlY2lhdGUgYW55IGhlbHAu
Cj4+Cj4+Cj4+Cj4+IFRoYW5rcywKPj4KPj4gUHJha2FzaAo+Pgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwp0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0CnRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9uCg==
