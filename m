Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C19C5642BC
	for <lists+tipc-discussion@lfdr.de>; Sat,  2 Jul 2022 22:40:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o7jus-0000nh-BJ; Sat, 02 Jul 2022 20:40:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christian@kohlschuetter.com>) id 1o7juq-0000nb-Fv
 for tipc-discussion@lists.sourceforge.net; Sat, 02 Jul 2022 20:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HnlqpiGi6MXPVNpwhC8bITss25t+oVXgxgkzuSdagQ4=; b=CphVtRitbJwYYz9QBgyrfbzx0F
 AV5a9Kmx86AeqJ91Y9DMfiY1clqFt4yH66CqGY4XVVN2mSIvonkhRtaWAly7UNLY4PaPYS6MewLME
 QXOxCGKXVI+slwAiNb5hG7gDEpQGrgaCnHJU4855S1CkaPVNqh1n4iyK0YVCIbVsroBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HnlqpiGi6MXPVNpwhC8bITss25t+oVXgxgkzuSdagQ4=; b=D9BPvLI30lgKGJEEW7nQN43Uop
 AzxnNeEnvxysN7ZnK2auBpykUtsqtPk8PVJ4I514pUEDB2mfjzA8MPWtKPievNx43o5vXrf5j/mZ/
 Ue72MDWMOe7F1tp27VuOuq3hiF0d2NqWC0ydXDNl5w7t801ZnsrajvRMTxjW+v+xNg/M=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o7juk-005B4g-La
 for tipc-discussion@lists.sourceforge.net; Sat, 02 Jul 2022 20:40:30 +0000
Received: by mail-ed1-f53.google.com with SMTP id c13so6854822eds.10
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 02 Jul 2022 13:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=HnlqpiGi6MXPVNpwhC8bITss25t+oVXgxgkzuSdagQ4=;
 b=ioGruubDQYHmyGNXxgml1YhneCnHWh2pYKOfBYJqRtqpoZro0z8Y0UV9VaMVhKXgK9
 kZejzarRLkNqQhNzqreGrgFNvGne6ADxzRHWpJ9pZp9OhaLxXQ6utiDWoXDdJTIClDtE
 2nS5qQTQC5A4+iI+89i+wEQC5YoS2eusk2tTl7/8R0feJjF8RIEWnQ0GLIXPfK9oW+ho
 OqrCBa2uPY73Kf5fxQFHK/E9rytLAnbLT/OXLMascd/LXOn70JvHeAeLdw0d3bmee8SU
 oS1Hh4mton7CJ5o1RovbJt2B7/LhgqlwNKj26hWt+LKoXLPAppwIeqjreZAuym8IVcoo
 i+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=HnlqpiGi6MXPVNpwhC8bITss25t+oVXgxgkzuSdagQ4=;
 b=dYXmbr7G13XBHmOyVrZeoNztyXzY1217Hf1LcZCiZQHyIchF5Sa5a7o/az2maMd8qA
 Xwq3wQVUafpdAF4Emgva2dNuKtSrFNvEuQLw+FSO2ZG2zUQEe0s1rpcOZZwz2m4FoeSM
 zHRsxAaKM/J4nZHq1ItWFE+MfDwqgGF2eBs1LbKJyyKvh8VgtlwVZBINUoMESbCZYi+K
 Ef6hxHKpl1a+Y2ZFT8pG4IIaUrkNXL0TKn0sxpCAPZo3njf4NT+OT8Ipp20KURA2WrmT
 URbrHyxml9U1TiuyRimljpDbAQ8xFjNgOVJuQ3SwYXEPgBiMUqqw4zHPj5HHQ4+g8YyM
 qc8A==
X-Gm-Message-State: AJIora/ULtp7+E5w7Zn1vDQUGflLBBNcvTVcJX6WyIw2lfBgsuKfl7o9
 +YqdZjUVUMEFB2q/ZqlAdwd1Lz1tIFgYkA==
X-Google-Smtp-Source: AGRyM1ttIOhBjQsaoaQkRm2OBdHZvmLwu5lICWVyP8fLhfTSzGroZ6gWbq4es5ShbBvb9EPdBZMvNA==
X-Received: by 2002:a05:6402:2711:b0:437:7404:2229 with SMTP id
 y17-20020a056402271100b0043774042229mr26827833edd.413.1656788249135; 
 Sat, 02 Jul 2022 11:57:29 -0700 (PDT)
Received: from smtpclient.apple (ip5f595116.dynamic.kabel-deutschland.de.
 [95.89.81.22]) by smtp.gmail.com with ESMTPSA id
 p5-20020a17090653c500b00722e8c47cc9sm4476457ejo.181.2022.07.02.11.57.28
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 Jul 2022 11:57:28 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Message-Id: <505D9657-0C02-45AE-880E-9F7EBEB4FE20@kohlschutter.com>
Date: Sat, 2 Jul 2022 20:57:27 +0200
To: tipc-discussion@lists.sourceforge.net
X-Mailer: Apple Mail (2.3696.100.31)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, I'm the author of junixsocket, an Open-Source Java
 library that, until recently, focused on providing access to Unix domain
 sockets for Java 8 and above. It is my great delight to announce that with
 version 2.5, junixsocket adds support for TIPC. 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: github.io]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1o7juk-005B4g-La
Subject: [tipc-discussion] junixsocket now supports TIPC (Java Socket API
 for TIPC)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgYWxsLAoKSSdtIHRoZSBhdXRob3Igb2YganVuaXhzb2NrZXQsIGFuIE9wZW4tU291cmNlIEph
dmEgbGlicmFyeSB0aGF0LCB1bnRpbCByZWNlbnRseSwgZm9jdXNlZCBvbiBwcm92aWRpbmcgYWNj
ZXNzIHRvIFVuaXggZG9tYWluIHNvY2tldHMgZm9yIEphdmEgOCBhbmQgYWJvdmUuCgpJdCBpcyBt
eSBncmVhdCBkZWxpZ2h0IHRvIGFubm91bmNlIHRoYXQgd2l0aCB2ZXJzaW9uIDIuNSwganVuaXhz
b2NrZXQgYWRkcyBzdXBwb3J0IGZvciBUSVBDLgoKanVuaXhzb2NrZXQgZW5hYmxlcyBkZXZlbG9w
ZXJzIHRvIGhhdmUgdGhlaXIgZXhpc3RpbmcgY29kZSB1c2luZyBTb2NrZXQgb3IgU29ja2V0Q2hh
bm5lbCBBUEkgbWFrZSB1c2Ugb2YgQUZfVElQQyBzb2NrZXRzIHdpdGggdmVyeSBsaXR0bGUgb3Zl
cmhlYWQuIEZvciBleGFtcGxlLCB5b3UgY2FuIG5vdyBydW4gYSBKYXZhIHdlYiBzZXJ2ZXIgb3Zl
ciBUSVBDLCBpbiBqdXN0IGEgZmV3IGxpbmVzIG9mIGNvZGUuCgpJdCdzIGNsZWFyIHRoYXQgdGhp
cyBpcyBqdXN0IHNjcmF0Y2hpbmcgdGhlIHN1cmZhY2Ugb2Ygd2hhdCdzIHBvc3NpYmxlLiBQbGVh
c2UgZ2l2ZSBqdW5peHNvY2tldC10aXBjIGEgdHJ5LCBsZXQgbWUga25vdyBob3cgaXQgd29ya3Mg
Zm9yIHlvdSwgYW5kIG9mIGNvdXJzZSwgc3BlY2lmaWNhbGx5LCB3aGF0IGRvZXNuJ3QuCgpMYXN0
bHksIGxldCBtZSBleHRlbmQgbXkgZ3JhdGl0dWRlIHRvIGFsbCBUSVBDIGRldmVsb3BlcnMgZm9y
IHRoaXMgY29vbCBwcm90b2NvbC4KCkJlc3QsCkNocmlzdGlhbgoKanVuaXhzb2NrZXQgb24gR2l0
SHViOiBodHRwczovL2dpdGh1Yi5jb20va29obHNjaHV0dGVyL2p1bml4c29ja2V0LwpqdW5peHNv
Y2tldCBkb2N1bWVudGF0aW9uOiBodHRwczovL2tvaGxzY2h1dHRlci5naXRodWIuaW8vanVuaXhz
b2NrZXQvCkFQSSBkb2NzOiBodHRwczovL2tvaGxzY2h1dHRlci5naXRodWIuaW8vanVuaXhzb2Nr
ZXQvYXBpZG9jcy8KVElQQyBzcGVjaWZpY3M6IGh0dHBzOi8va29obHNjaHV0dGVyLmdpdGh1Yi5p
by9qdW5peHNvY2tldC9qdW5peHNvY2tldC10aXBjLwotLSAKRHIuIENocmlzdGlhbiBLb2hsc2No
w7x0dGVyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90
aXBjLWRpc2N1c3Npb24K
