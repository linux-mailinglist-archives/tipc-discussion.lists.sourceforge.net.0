Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5C697BF77
	for <lists+tipc-discussion@lfdr.de>; Wed, 18 Sep 2024 19:09:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sqyBE-0002jw-MH;
	Wed, 18 Sep 2024 17:09:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1sqyBD-0002jq-HT
 for tipc-discussion@lists.sourceforge.net;
 Wed, 18 Sep 2024 17:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FA0GExMCh8oVmNtn2hALlpuUcRrhz8dU8wS7ZdC1dg4=; b=IhzX5bjJBaIkw6lzwGXSI0JvmX
 wo3IUZ9/hzaO0ZgeoiOE+w26WzFpomTEsq0MivSMfTE+OF9KqlwA2EKS5hAJUF4KIthRzFt/YD4Oj
 woU4nbAbws0loZctyLBNt5s+IbXZEaNLqWRqnPDktlgNDjEtzGySCujrUajvlZ1j+sw4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FA0GExMCh8oVmNtn2hALlpuUcRrhz8dU8wS7ZdC1dg4=; b=GyoYQOldykH6Blk9eeHG34sO6c
 IrkJLhoHALkVUbdUn6YY2ZyJOiegC4U/j777CyQMyAwqUAuAES9QpTN232rP4FylVlOmCZ/iOf7DQ
 Z4ggzUfwiJIsSOs3JhzS3geCdLR9FGJnFH8sQUmAgHDd+y6Kz18vhDGkOne3AlaSvABI=;
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sqyBC-0007ob-NL for tipc-discussion@lists.sourceforge.net;
 Wed, 18 Sep 2024 17:09:27 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 006d021491bc7-5e1b50fea4bso3778707eaf.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 18 Sep 2024 10:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726679356; x=1727284156; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FA0GExMCh8oVmNtn2hALlpuUcRrhz8dU8wS7ZdC1dg4=;
 b=H/3gTcmUevgLf/h4LkOtiUnrRSabkuiXU+RyvGNuwNQlvwZowcOg7HOwPJCboQzXoF
 GTZvIIMJMdLeEFL8rntsKjx8etXDm3Tg5s3WBeA80XnstThpS25ONwZhzS5BfO0PaNMG
 pP/o/ASwfy+1XF8bjpxhLsoyzitaNm2jO46GzZoebqoDwH1pihTuwAOcgZqpF0/IpEjt
 01u5FzWMXqDkzzSLKQ7G0gtKs7Nh4iweWWufWCZ03CSgJFjA2oVk+ozlPYhLFq2xtgjX
 fR2s9DpiRrBQaW32phovPm6nZcQ+VN0+z1QgptdAmI3AkNoOedIivXGh1vO2oTfbZLO+
 Ja6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726679356; x=1727284156;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FA0GExMCh8oVmNtn2hALlpuUcRrhz8dU8wS7ZdC1dg4=;
 b=oxWqksc2GpXUFBij7HV0sU3rnuP5zs+4fbOJVhnwCKiHchT9Wq6gwiGYzdVXIALaVf
 4Zh+cWErtiPJXCVx6XJhcGdMCm3QAGPT3V/vvGztj2NbU130SLh7TIPqyVnG8owOSEIe
 /+SwwhJdcqZlYFwzIJyd2tNJOkIIVcLNi/XVIoXtWy+1lt19fL6Uvvlidv96XRuORF3O
 ZeCXLGh2hrsGBRec6zO8e+fG9Pe934Go5bZCUsJ7BpHyzdJ9o07e93TIdFkiPxlWDt3i
 fTegviTyZK2iw5K59GiOQ+y2Svwtd6H0C7pvxs2ynC9tRl+dbl3rh/io1lkGLgjGf6DY
 AxNQ==
X-Gm-Message-State: AOJu0YxtmopcCPX/xuyc/MXglIwKLeQUZTw3LzjDr6FgeExtwWZeZ6dj
 Knb4vkPWQ0uPRNxQFg6uJ8X2sI1EhXgnIldMr/3AW83xnUKNIx6z2CRwj8cLhBXJaR/oNDT8FUv
 unqbpQyjLedai6FmSYothFWsN9H8ngxCj
X-Google-Smtp-Source: AGHT+IHmIAXyuuopjs/rK598Y9pSrStKfmyrc5XwOg2ufMg+EDkkr2c1Z53TuAQfdMiOTG69oazsSsBWNj2vt+NHp8s=
X-Received: by 2002:a05:6870:56aa:b0:25e:b999:d24 with SMTP id
 586e51a60fabf-27c3eeb92c1mr13883989fac.0.1726679355899; Wed, 18 Sep 2024
 10:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <CACB1WsQAHZfeFHgy-u+ZO46P8BwVMu-j_GHm2Rp9MDNSvkWvhQ@mail.gmail.com>
 <70006d17-01df-4253-b4d0-1c442dbea71f@redhat.com>
In-Reply-To: <70006d17-01df-4253-b4d0-1c442dbea71f@redhat.com>
From: prakash bisht <ps13.bisht@gmail.com>
Date: Wed, 18 Sep 2024 22:38:57 +0530
Message-ID: <CACB1WsR5-nkYR=aOhkb-2=x9PWv4vbAgPo9Qe=_8o1UHHp-dMg@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thank you Jon for your response. In some cases, we might be
 hitting a race-condition during the small window that you have mentioned.
 To give you more context about our use case which is little different than
 you have mentioned in your solution. We have one publisher and many
 subscribers. Typically the publisher is created first and [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.53 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sqyBC-0007ob-NL
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Reg: Need information about TIPC_MCAST
 subscriber socket
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
Cc: Xin Long <lxin@redhat.com>, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

VGhhbmsgeW91IEpvbiBmb3IgeW91ciByZXNwb25zZS4gSW4gc29tZSBjYXNlcywgd2UgbWlnaHQg
YmUgaGl0dGluZyBhCnJhY2UtY29uZGl0aW9uIGR1cmluZyB0aGUgc21hbGwgd2luZG93IHRoYXQg
eW91IGhhdmUgbWVudGlvbmVkLgoKVG8gZ2l2ZSB5b3UgbW9yZSBjb250ZXh0IGFib3V0IG91ciB1
c2UgY2FzZSB3aGljaCBpcyBsaXR0bGUgZGlmZmVyZW50IHRoYW4KeW91IGhhdmUgbWVudGlvbmVk
IGluIHlvdXIgc29sdXRpb24uIFdlIGhhdmUgb25lIHB1Ymxpc2hlciBhbmQgbWFueQpzdWJzY3Jp
YmVycy4KVHlwaWNhbGx5IHRoZSBwdWJsaXNoZXIgaXMgY3JlYXRlZCBmaXJzdCBhbmQgdGhlIHN1
YnNjcmliZXJzIG1heSBjb21lIGxhdGVyCmF0IGFueSB0aW1lLgpUaGUgc3Vic2NyaWJlciBhcHBs
aWNhdGlvbiBuZWVkcyB0byBwdWxsIGFscmVhZHkgcHVibGlzaGVkIGRhdGEgZnJvbSB0aGUKcHVi
bGlzaGVyIGFwcGxpY2F0aW9uLgoKQ3VycmVudGx5IHRoZSBzdWJzY3JpYmVyIGFwcGxpY2F0aW9u
IGlzIGRvaW5nIHRoZSBwdWxsIGp1c3QgYWZ0ZXIgdGhlCmJpbmQoKSBzeXN0ZW0gY2FsbCB0aHJv
dWdoIGEgZGlmZmVyZW50IGNoYW5uZWwoIG5vdCBwdWIvc3ViKS4KQnV0IGlmIHNvbWUgZGF0YSBp
cyBwdWJsaXNoZWQgYWZ0ZXIgdGhlIHB1bGwgYW5kIGJlZm9yZSB0aGUgc3Vic2NyaWJlcgpzb2Nr
ZXQgYmVjb21lcyByZWFkeSwgdGhlbiB0aGF0IGRhdGEgd2lsbCBuZXZlciByZWFjaCB0aGUgc3Vi
c2NyaWJlcgphcHBsaWNhdGlvbi4KCklzIHRoZXJlIGFueSB3YXkgdG8ga25vdyBpZiB0aGUgc3Vi
c2NyaWJlciBzb2NrZXQgaXMgZnVsbHkgcmVhZHkgaW5zaWRlIHRoZQpzdWJzY3JpYmVyIGFwcGxp
Y2F0aW9uID8KT3IKSWYgdGhlIHN1YnNjcmliZXIgYXBwbGljYXRpb24gd2FpdHMgZm9yIGEgZmV3
IG1pbGxpc2Vjb25kcyAoIGUuZy4xMDBtcyApCmFmdGVyIGJpbmQoKSBzeXN0ZW0gY2FsbCgpIGFu
ZCAgYmVmb3JlIHRoZSBwdWxsLCB3b3VsZCBpdCBiZSBhCnByYWN0aWNhbCBhcHByb2FjaCB0byBh
dm9pZCB0aGlzIHJhY2UgY29uZGl0aW9uID8KCktpbmRseSBub3RlIHRoYXQgd2UgYXJlIHVzaW5n
IHRpcGMgcHViL3N1YiBzb2NrZXRzIHdpdGggc2NvcGUgYXMKIlRJUENfTk9ERV9TQ09QRSIgc28g
dGhlIHdpbmRvdyB3ZSBhcmUgdGFsa2luZyBhYm91dCBoZXJlIHNob3VsZCBiZQpyZWxhdGl2ZWx5
IHZlcnkgc21hbGwuCgpUaGFua3MgYW5kIFJlZ2FyZHMsClByYWthc2gKCgpPbiBUdWUsIFNlcCAx
NywgMjAyNCBhdCAxOjAx4oCvQU0gSm9uIE1hbG95IDxqbWFsb3lAcmVkaGF0LmNvbT4gd3JvdGU6
Cgo+Cj4KPiBPbiAyMDI0LTA5LTE2IDA3OjU4LCBwcmFrYXNoIGJpc2h0IHdyb3RlOgo+ID4gSGkg
SGkgVHVuZyxYaW4sSm9obiwKPiA+Cj4gPiBXZSBhcmUgdXNpbmcgdGlwYyBtdWx0aWNhc3Qgc29j
a2V0cyBmb3IgcHVibGlzaGVyL3N1YnNjcmliZXIgdHlwZSBvZgo+ID4gYXBwbGljYXRpb24uCj4g
PiBCZWxvdyBhcmUgdGhlIHNvY2tldCBkZXRhaWxzCj4gPiBzb2NrZXQgdHlwZSAgICAgOiAgU09D
S19SRE0KPiA+IHRpcGMgYWRkciB0eXBlICA6ICBUSVBDX01DQVNUCj4gPgo+ID4gV2Ugd291bGQg
bGlrZSB0byBrbm93IGlmIHRoZSBzdWNjZXNzZnVsIGJpbmQoKSBjYWxsIG9uIHRoZSBzdWJzY3Jp
YmVyCj4gPiBzb2NrZXQgZ3VhcmFudGVlcyB0aGF0IHRoZSBzdWJzY3JpYmVyIGlzIHJlYWR5IGFu
ZCBubyBwdWJsaWNhdGlvbgo+ID4gd291bGQgYmUgbWlzc2VkID8gT3Igc2hhbGwgd2Ugd2FpdCBm
b3Igc29tZSB0aW1lIGJlZm9yZSBhc3N1bWluZyB0aGUKPiA+IHN1YnNjcmliZXIgc29ja2V0IGlz
IHJlYWR5ID8KPiBUaGVyZSBtYXkgYmUgKHZlcnkpIGEgc21hbGwgbGFnIGJldHdlZW4gdGhlIHJl
dHVybiBvZiB0aGUgYmluZCgpIGNhbGwKPiB1bnRpbCB0aGUgYmluZCBpcyByZWdpc3RlcmVkIG9u
IGFsbCB0aGUgb3RoZXIgbm9kZXMuCj4gVGhlIHByb3BlciB3YXkgdG8gZ2V0IGFyb3VuZCB0aGlz
IGlzIHRvIGxldCB5b3VyICJwdWJsaXNoZXJzIiB1c2UgdGhlCj4gVElQQyBzdWJzY3JpcHRpb24g
bWVjaGFuaXNtIHRvIGtlZXAgdHJhY2sgb2YgeW91cgo+ICJzdWJzY3JpYmVyIiwgaS5lLiwgdGhl
eSBkb27CtHQgc3RhcnQgcHVibGlzaGluZyB1bnRpbCB0aGV5IGhhdmUgcmVjZWl2ZWQKPiBhIG5v
dGlmaWNhdGlvbiB0aGF0IHRoZSBzdWJzY3JpYmVyIGlzIGJvdW5kCj4gdG8gdGhlIHNlcnZpY2Ug
YWRkcmVzcy9yYW5nZS4KPiAvLy9qb24KPiA+Cj4gPgo+ID4gVGhhbmtzIGFuZCBSZWdhcmRzLAo+
ID4gUHJha2FzaAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby90aXBjLWRpc2N1c3Npb24K
