Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E77233A0DCE
	for <lists+tipc-discussion@lfdr.de>; Wed,  9 Jun 2021 09:35:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lqsjk-0007Fe-7s; Wed, 09 Jun 2021 07:34:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lqsji-0007FM-FB
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Jun 2021 07:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dKHLpYCGx0g7EoGipPcjgNbmX1MLZSaTZNKvZi1Yge0=; b=Z249WJPSYYhrdLWYwQPLydfbwy
 RjUEfhsZN05m5M0F/7/bgYvBEQb5DQN3llJBzenRw1/vTmJyAMOFWx/775w+BJ7sLsk14cAdjcL3q
 oIxrQIhxcY/X7WoaE8nLigqE0At7tu5Suht+jzs00+SISpw7IdgSM5qa8UZqTF5qGq6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dKHLpYCGx0g7EoGipPcjgNbmX1MLZSaTZNKvZi1Yge0=; b=WMtmtbC4xXkRxjdLYmNjRwUEzX
 IuJUafl8FxH38PsnA/WJMYNYbDqcIQIOplU5w5e3sGBgpk0pK49F4+ZK6JZZ9JuxaMYr2WoK360WW
 Jig+WPzaO1A2wLPWTt86vcwM5zf4jcMazTGEQcaoI97ysPcYmzEcPpXjBIolHnMwnkfg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqsjb-001q85-HM
 for tipc-discussion@lists.sourceforge.net; Wed, 09 Jun 2021 07:34:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623224077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dKHLpYCGx0g7EoGipPcjgNbmX1MLZSaTZNKvZi1Yge0=;
 b=MjASQ07atcm0cfKbt8gYkYtEmx1OnLnJ5Fo3QxT92qq50w1RV554YNPaMcNUd6AVFVTTYD
 /mYgjWkJ/xGOVMC1HpxuwvmzJlu0CmBzjB6q4PHiPr1lely7LwnHUnff5khhOZ07jMRyeL
 Z9/rO9v/QtPYtt9yCBhaHBocQ9ygnk4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-vc7yn7yUPhWgUvu-LCj6Sw-1; Wed, 09 Jun 2021 03:34:36 -0400
X-MC-Unique: vc7yn7yUPhWgUvu-LCj6Sw-1
Received: by mail-qk1-f200.google.com with SMTP id
 205-20020a3707d60000b02903aa9208caa2so7211039qkh.13
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 09 Jun 2021 00:34:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dKHLpYCGx0g7EoGipPcjgNbmX1MLZSaTZNKvZi1Yge0=;
 b=OS8/4zReCgHtRZ5202hibdMOAzOusVTscS3702olEnzV5I7fiuWuwi7DOt4RGWqH4X
 FhFk2ls3AQD1BOSBR3hDnbtDtCqdvJY7xiYZpRM9kDqtOqwzCxeVSnXTIakqzqnIo8OI
 FJG3mocWq4NbOMbszViyv89xUmPqHZAsVxRzz3BHfdqi4BBfdAL2JRjmQtPp0Vakv7x+
 B/C3EVEBzLxtCO7GvrmLmSYs4Vqpyq9HaisdmwmtK6DW3reALPPfKWEYYxha7KruHs8f
 mJNhlHnMQikngVmg27wOqa+91QPMHt33UFSsI+2OySBGjgayHsP/KrLRYHH0mLfbUWYC
 W0RQ==
X-Gm-Message-State: AOAM5311rn/OrlvdntTFMR6qM/OnPA0LNAJC9iUKtA94j/PhpbZuuvc2
 b79oxrw2ScKXQcVFxhsDWRuY2gz7i7O8AWuDZGG98M7Ejc3W5oNuGXuHzIF1+NaTC7MoFFGuzJc
 pFr07bGM0VKXSL21dWSyd9N+gIV+t6CpcaNZK
X-Received: by 2002:a05:620a:1253:: with SMTP id
 a19mr11372146qkl.365.1623224076136; 
 Wed, 09 Jun 2021 00:34:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyeQ3vZwJD5V9+1RCCrE3JekeNNLTpi7d82jJPwWzCuGoj9yPBCBVWCXy2YNny96QDa4zPseQ==
X-Received: by 2002:a05:620a:1253:: with SMTP id
 a19mr11372138qkl.365.1623224075940; 
 Wed, 09 Jun 2021 00:34:35 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id g19sm6014609qto.49.2021.06.09.00.34.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Jun 2021 00:34:35 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <20210604074419.53956-1-dong.menglong@zte.com.cn>
 <e997a058-9f6e-86a0-8591-56b0b89441aa@redhat.com>
 <CADxym3ZostCAY0GwUpTxEHcOPyOj5Lmv4F7xP-Q4=AEAVaEAxw@mail.gmail.com>
 <998cce2c-b18d-59c1-df64-fc62856c63a1@redhat.com> <20210607125120.GA4262@www>
 <46d2a694-6a85-0f8e-4156-9bb1c4dbdb69@redhat.com>
 <20210609025412.GA58348@www>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <927af5e7-6194-d94e-1497-6b3dce26c583@redhat.com>
Date: Wed, 9 Jun 2021 03:34:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609025412.GA58348@www>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lqsjb-001q85-HM
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: fix FB_MTU eat
 two pages
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
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev <netdev@vger.kernel.org>,
 Zeal Robot <zealci@zte.com.cn>, LKML <linux-kernel@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiA2LzgvMjEgMTA6NTQgUE0sIE1lbmdsb25nIERvbmcgd3JvdGU6Cj4gT24gVHVlLCBKdW4g
MDgsIDIwMjEgYXQgMDY6Mzc6MzhQTSAtMDQwMCwgSm9uIE1hbG95IHdyb3RlOgo+Pgo+IFsuLi5d
Cj4+IEkgc3BlbnQgYSBsaXR0bGUgbW9yZSB0aW1lIGxvb2tpbmcgaW50byB0aGlzLiBJIHRoaW5r
IHRoZSBiZXN0IHdlIGNhbiBkbyBpcwo+PiB0byBrZWVwIEZCX01UVSBpbnRlcm5hbCB0byBtc2cu
YywgYW5kIHRoZW4gYWRkIGFuIG91dGxpbmUgZnVuY3Rpb24gdG8gbXNnLmMKPj4gdGhhdCBjYW4g
YmUgdXNlZCBieSBiY2FzdC5jLiBUaGUgd2F5IGl0IGlzIHVzZWQgaXMgbmV2ZXIgdGltZSBjcml0
aWNhbC4KPj4KPj4gSSBhbHNvIHNlZSB0aGF0IHdlIGNvdWxkIG5lZWQgYSBsaXR0bGUgY2xlYW51
cCBhcm91bmQgdGhpcy4gVGhlcmUgaXMgYQo+PiByZWR1bmRhbnQgYWxpZ24oKSBmdW5jdGlvbiB0
aGF0IHNob3VsZCBiZSByZW1vdmVkIGFuZCByZXBsYWNlZCB3aXRoIHRoZQo+PiBnbG9iYWwgQUxJ
R04oKSBtYWNyby4KPj4gRXZlbiB0aXBjX2J1Zl9hY3F1aXJlKCkgc2hvdWxkIHVzZSB0aGlzIG1h
Y3JvIGluc3RlYWQgb2YgdGhlIGV4cGxpY2l0IG1ldGhvZAo+PiB0aGF0IGlzIHVzZWQgbm93Lgo+
PiBJbiBnZW5lcmFsLCBJIHN0b25nbHkgZGlzbGlrZSBjb25kaXRpb25hbCBjb2RlLCBhbmQgaXQg
aXMgbm90IG5lY2Vzc2FyeSBpbgo+PiB0aGlzIGZ1bmN0aW9uLiBJZiB3ZSByZWRlZmluZSB0aGUg
bm9uLWNyeXB0byBCVUZfVEFJTFJPT00gdG8gMCBpbnN0ZWFkIG9mIDE2Cj4+IChpdCBpcyBub3Qg
dXNlZCBhbnl3aGVyZSBlbHNlKSB3ZSBjb3VsZCBnZXQgcmlkIG9mIHRoaXMgdG9vLgo+Pgo+PiBC
dXQgSSBsZWF2ZSB0aGF0IHRvIHlvdS4gSWYgeW91IG9ubHkgZml4IHRoZSBGQl9NVFUgbWFjcm8g
SSBhbSBjb250ZW50Lgo+Pgo+IFllYWgsIEkgdGhpbmsgSSBjYW4gaGFuZGxlIGl0LCBqdXN0IGxl
YXZlIGl0IHRvIG1lLgo+Cj4gKGZpbmdlciBoZWFydCA6LykKPiBNZW5nbG9uZyBEb25nSQpJdCBz
ZWVtcyBsaWtlIEkgaGF2ZSBiZWVuIG1pc2xlYWRpbmcgeW91LiBJdCB0dXJucyBvdXQgdGhhdCB0
aGVzZSAKbWVzc2FnZXMgKndpbGwqIGJlIHNlbnQgb3V0IG92ZXIgdGhlIG5ld29yayBpbiBzb21l
IGNhc2VzLCBpLmUuIGF0IAptdWx0aWNhc3QvYnJvYWRjYXN0IG92ZXIgYW4gVURQIGJlYXJlci4K
U28sIHdoYXQgd2UgbmVlZCBpcyB0d28gbWFjcm9zLCBvbmUgd2l0aCB0aGUgY29uZGl0aW9uYWwg
Y3J5cHRvIApoZWFkL3RhaWxyb29tIGRlZmluZWQgYXMgeW91IGZpcnN0IHN1Z2dlc3RlZCwgYW5k
IG9uZSB0aGF0IG9ubHkgdXNlIHRoZSAKbm9uLWNyeXB0byBoZWFkL3RhaWxyb29tIGFzIHdlIGhh
dmUgYmVlbiBkaXNjdXNzaW5nIG5vdy4KVGhlIGZpcnN0IG9uZSBjYW4gYmUgZGVmaW5lZCBpbnNp
ZGUgYmNhc3QuYywgdGhlIGxhdHRlcsKgIGluc2lkZSBtc2cuYy4KSXQgbWlnaHQgYWxzbyBiZSBh
IGdvb2QgaWRlYSB0byBnaXZlIHRoZSBtYWNyb3MgbW9yZSBkZXNjcmlwdGl2ZSBuYW1lcywgCnN1
Y2ggYXMgT05FUEFHRV9NVFUgaW4gdGhlIGJyb2FkY2FzdCB2ZXJzaW9uLCBhbmQgT05FUEFHRV9T
S0IgaW4gdGhlIApub2RlIGxvY2FsCnZlcnNpb24uCgpEb2VzIHRoYXQgbWFrZSBzZW5zZT8KCi8v
L2pvbgoKCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3RpcGMtZGlzY3Vzc2lvbgo=
