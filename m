Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A29BF54E5C1
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 17:13:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1rBa-0000Bk-RM; Thu, 16 Jun 2022 15:13:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o1rBT-0000Bc-Pd
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Bi0o5gRks8NqW+du3WrXjDuq8TBWKLI7RA20Tetero=; b=b9HzngQsHxQy42RuItDUHVpUo3
 zRELlH6ALNEwPLyuotzOGhB8wy3My5HkW3eMkOdK3DfawolKlvzj9hW0hYxVQDa3bSyDuBdbKRAJk
 h0mxPWQih5DDH3dmOzwlsb53F4RNI3FNG01/0L+TdMTYqCvl1dLpwL7XBL8p3MlTR7VU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Bi0o5gRks8NqW+du3WrXjDuq8TBWKLI7RA20Tetero=; b=bWOz9kv7Da6gSqKXU8CfEcAWHp
 DtoxqpUb1+G7QCRbFSwI87w2TWX6jWU79AdH2Rrvm2pi5TTtBW6c3Ema+6LbvPPUuu103DITQRVNP
 CaAsHW1nKdJe9tgTvLaAMZHva/f4qjuGtExXn+jKnfY9EWJiRrPhP1AvNHalVSGZ5pFc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1rBR-00080o-9p
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 15:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655392396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7Bi0o5gRks8NqW+du3WrXjDuq8TBWKLI7RA20Tetero=;
 b=Bdb6xj2zSwAzcE++AZjyOzFdHWjYc5TnGZ/jvtyssCiV+Opydd/qpJAWAAi5Z6ESqN0QqE
 ljUJ03QFjnAThy5xAb4qm6KW/fgtxsM5Y2t/ZtLesLe9m1l5VP0xqm7Mt7Ra5d1MXh1WiH
 3tOZUUm0PmU/voQljrpNsRurwW00m+o=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-22-EE_wk2pUNJq_ke19Mjnb6w-1; Thu, 16 Jun 2022 11:13:15 -0400
X-MC-Unique: EE_wk2pUNJq_ke19Mjnb6w-1
Received: by mail-qk1-f198.google.com with SMTP id
 k188-20020a37a1c5000000b006a6c4ce2623so2033945qke.6
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 16 Jun 2022 08:13:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7Bi0o5gRks8NqW+du3WrXjDuq8TBWKLI7RA20Tetero=;
 b=f0HWlf2T76vp6A2cjLga9F2szUHxUU6tEaJGlpSqy8gLcbmeScPk586Py0cJsaJnnS
 MFUlODFhb8IuAkaMfdHpuQJUpbglMelJnXRlfeUssQVTipzud199hsuzDXDhpoJrOGtt
 yML8N8ccePmMCi1gfgR36H1jVHAvnybVQ/3VOucUGks5zJIq1O61F420TRN9pkEkqzam
 waDEH8SGdFgrjaNQRwUJdtuwmskIlOkXLVysegWqhM1tveqqpGp1P/pItk9gHOc2+CSS
 x7Vzq5Xd2hOIkyTaZqR64/2AmDjnst33e4Gbcw8D6LuZwQpMbRFVNnwH2NDeIcPRlqWc
 NZqw==
X-Gm-Message-State: AJIora8vJer4M1V5I/8vcaZvsqGDGJPvjHjpe5O+8/0N5TY/wDUY+bHZ
 V0qvQ9qeaF63jy43wxLHD1Aids3nybO2cyXPw4tRl4w0bmp6Qm0lOMaxIgr0S3iWUKT6ZTfJdgS
 XA9t6Vabqbb6MI9typn/7FyBpEXtnGTv0hz8q8WjkDx+ONlzxwM1VMKuUCHTi64BS917CWJUySd
 v+5qcM566p6w==
X-Received: by 2002:a05:6214:c45:b0:46b:bd43:6dfe with SMTP id
 r5-20020a0562140c4500b0046bbd436dfemr4454745qvj.93.1655392394433; 
 Thu, 16 Jun 2022 08:13:14 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vKYAOvgacdFrQuM1yGNFbPRj3NAzikxjyCAeUsnqAdQ2rP/mqVipOAFyyR9JSmPCNNv5+qWg==
X-Received: by 2002:a05:6214:c45:b0:46b:bd43:6dfe with SMTP id
 r5-20020a0562140c4500b0046bbd436dfemr4454725qvj.93.1655392394098; 
 Thu, 16 Jun 2022 08:13:14 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 c135-20020a379a8d000000b006a6c552736asm2080956qke.119.2022.06.16.08.13.13
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jun 2022 08:13:13 -0700 (PDT)
Message-ID: <75841128-438a-e44c-cd51-3fd56f45ebc8@redhat.com>
Date: Thu, 16 Jun 2022 11:13:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: tipc-discussion@lists.sourceforge.net
References: <PH0PR06MB85694A4AF8B967ECCCB35EBBE4AC9@PH0PR06MB8569.namprd06.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <PH0PR06MB85694A4AF8B967ECCCB35EBBE4AC9@PH0PR06MB8569.namprd06.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/16/22 06:26, Røysland, Jonas Gjendem via tipc-discussion
    wrote: > Hey, > > We are working with the TIPC in the terminal and trying
    to connect a client and a server between two different linux ma [...] 
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1rBR-00080o-9p
Subject: Re: [tipc-discussion] TIPC Terminal Problem
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA2LzE2LzIyIDA2OjI2LCBSw7h5c2xhbmQsIEpvbmFzIEdqZW5kZW0gdmlhIHRpcGMtZGlz
Y3Vzc2lvbiB3cm90ZToKPiBIZXksCj4KPiBXZSBhcmUgd29ya2luZyB3aXRoIHRoZSBUSVBDIGlu
IHRoZSB0ZXJtaW5hbCBhbmQgdHJ5aW5nIHRvIGNvbm5lY3QgYSBjbGllbnQgYW5kIGEgc2VydmVy
IGJldHdlZW4gdHdvIGRpZmZlcmVudCBsaW51eCBtYWNoaW5lcy4gV2UgYXJlIHVzaW5nIHRoZSBw
cm9ncmFtcyBoZWxsb19jbGllbnQuYyBhbmQgaGVsbG9fc2VydmVyLmMgdG8gc2VuZCBhbmQgcmVj
aWV2ZSB0byBjaGVjayBpZiB0aGV5IGFyZSByZXNwb25kaW5nIHRvIGVhY2ggb3RoZXIuIFdlIGFy
ZSBzZXR0aW5nIHVwIHRoZSBub2RlcyBhbmQgdGhlIGJlYXJlciBhbmQgYXJlIGZvbGxvd2luZyB0
aGUgR2V0dGluZyBTdGFydGVkIHNlY3Rpb24uCj4KPiBUbyB0aGUgcHJvYmxlbTogV2UgYXJlIG5v
dCBzdXJlIGhvdyB0byBzZXQgdXAgdGhlIG5vZGVzIGluIGRpZmZlcmVudCBtYWNoaW5lcyBhbmQg
dG8gbGluayB0aGVtIHdpdGhpbiB0aGUgc2FtZSBjbHVzdGVyIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gY29tbXVuaWNhdGUgYW5kIHNvbWV0aW1lcyBldmVuIHRob3VnaCB3ZSBlbmFibGUgdGhlIGJl
YXJlcnMgd2UgZG9uJ3QgZ2V0IGFueSBvZiB0aGVtIGluIHRoZSBsaW5rIGxpc3QuCkFyZSB5b3Ug
dXNpbmcgVURQIG9yIGJhcmUgRXRoZXJuZXQ/IEluIHRoZSBsYXR0ZXIgY2FzZSB0aGUgdHdvIApp
bnRlcmZhY2VzIG11c3QgYmUgb24gdGhlIHNhbWUgc3VibmV0L3ZsYW4gYW5kIGhhdmUgYnJvYWRj
YXN0IGVuYWJsZWQuCkNhbiB5b3UgcGluZyBiZXR3ZWVuIHRoZSB0d28gPyBEb2VzIFdpcmVzaGFy
ayBvciB0Y3BkdW1wIHNob3cgYW55dGhpbmc/Cgo+IElzIHRoaXMgYSBjb21tb24gaGFyZHdhcmUg
cHJvYmxlbSBvciBwcm9ibGVtIGl0c2VsZi4gSGF2ZSB5b3UgYW55IGlkZWEgb2YgdGhpcyBwcm9i
bGVtLgo+Cj4gSXMgdGhlcmUgYWxzbyBhIHdheSB0byBjcmVhdGUgdGhlIG5vZGVzIGZyb20gYyBj
b2RlLCBsaWtlIHVzaW5nIHRoZSB0aXBjIGFwaSBsaWJyYXJ5LgpObywgbm90IHJlYWxseS4gWW91
IGNvdWxkIG9mIGNvdXJzZSBlYXNpbHkgbWFrZSBvbmUgYnkgaW52b2tpbmcgdGhlIAondGlwYycg
dG9vbCBmcm9tIGMuCllvdSBjb3VsZCBldmVuIGRvICdtb2Rwcm9iZScgZnJvbSBjIGlmIHlvdSB3
YW50IHRvLCBhcyBsb25nIGFzIHlvdXIgCnByb2dyYW0gaGFzIHJvb3QgYWNjZXNzLgoKLy8vam9u
Cgo+Cj4gU2luY2VybHksCj4KPiBKb25hcyBHamVuZGVtIFLDuHlzbGFuZAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiB0aXBjLWRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cj4gdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lv
bgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRp
cGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBj
LWRpc2N1c3Npb24K
