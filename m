Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D7497A7CF
	for <lists+tipc-discussion@lfdr.de>; Mon, 16 Sep 2024 21:32:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sqHRv-0003xb-QB;
	Mon, 16 Sep 2024 19:31:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1sqHRp-0003xQ-WE
 for tipc-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 19:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ir+IV7Bx6sEN+Zj5b794Ph2+6ff/rR+7P4W8i+MAO/s=; b=YZ7NTdPtNjyVUa+hdedYRLUUHi
 b6MtcOlVUVjz8CYXy1ODBqV5JGQEGtnowFaYT8LkwUoQi3D+Tsk7UM9mdS6Ik+MIzyiP8+4leVBC4
 GNQgBFLIqE04j3gO1KRHDD21V3QVtPpl7jrRPOv3yE1eXf9kloXI9MuN33cGkcDsiPgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ir+IV7Bx6sEN+Zj5b794Ph2+6ff/rR+7P4W8i+MAO/s=; b=Ndc5r2XXqpnQwnRGwnqRMtvp8z
 FArL0sEOQV3NBNc69XSPG75uzHPksa1LLEPaYpX8Txn77fuz4Zg6wYopL3nwoZZjQYDf4D8vUy/q+
 oab+wJcJHyP2im0BGAW8xhb+1x+2LZFQ76qAncf75HdvWVjBO42LtrCYXHUGTEEA4n/E=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sqHRo-0002AG-Jr for tipc-discussion@lists.sourceforge.net;
 Mon, 16 Sep 2024 19:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726515093;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ir+IV7Bx6sEN+Zj5b794Ph2+6ff/rR+7P4W8i+MAO/s=;
 b=I4Hxz0+FJ/HwP23tF0gKDYQVLezCfFu4OGVoWMHkBzC3MmV5+CrrLauiBREIcD2XwVYsof
 89j4Ioj6q7J+bEkCCmV7kQSdb4UFizzCE4O8FhNOJG0PFX/uvnhcTY5KQ28si3EpSe6GxF
 7N4GuPsecF7GMMNZcLHSfvdIQHWN+XA=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-563-oktzoY-hO2i-Z5OGsZZnMw-1; Mon, 16 Sep 2024 15:31:32 -0400
X-MC-Unique: oktzoY-hO2i-Z5OGsZZnMw-1
Received: by mail-pf1-f199.google.com with SMTP id
 d2e1a72fcca58-718d873b1e8so5598082b3a.3
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 16 Sep 2024 12:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726515091; x=1727119891;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ir+IV7Bx6sEN+Zj5b794Ph2+6ff/rR+7P4W8i+MAO/s=;
 b=vR6ABDprlvOoCeVfDHf035WrOxdIApCPnd+/+cBg7BJaDobbiY+U1jJLmVXI+Mf5d9
 hI204/aiEp6XzVePdWkAxpoXm9qm3gh04p6HLNDYnoEMt/RAJDV/lfdhgbTWhgtuKpY9
 grDnvDmJLt6/YEp2XSPBcIInAZcB0neZmyB+M0FK68ZPXy7GSCGb3gKVLOSc3zwf0EWv
 aLzr6W9a0Um28RG7LniWrPSctJBPG9jlOKPNh1CuxU4Ao/oTvO8lPdcxyI1w9s9zJjZP
 J3aBd5WMkl5CCVwm0iJYnl08D+m5CDIfozvxc76MRdYQW9kNcU/B61s+4Au7AAGsgorL
 FURA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVepOUPiI4LBerdJuJU2SdhKdEGy1ghWQLeXIx3TTnSLchdEGctV/NNJ37xIO00X6vtxQl0BcWs3+YtVTscn70=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyVjsQn/HMxv6SDiKOlNWR9k5cvNE0lIMHfr/gB2SvczUZgTPfQ
 oPms7j2ISrxCaaThuP+1HpnrXPu38jSrYOhrxS4rZ2Z2wjNzMUP3RcJ/gehtr15/0c+E4OVBSvQ
 XGycVJ8zR+OnXl9CExGP+jiNg+xrQrofof5/TATBGR861A4qcbVeOh/eIX7ywMtRJY9e307RX6A
 ==
X-Received: by 2002:aa7:88d4:0:b0:70d:2693:d215 with SMTP id
 d2e1a72fcca58-71936a5e771mr19135163b3a.16.1726515090985; 
 Mon, 16 Sep 2024 12:31:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEt7kSkQiSBC2fIFyBngPAjc7qkdgQDMY80MLJvuDsLpx3myIdQ+cUgIXWKaUKom6LLormwQg==
X-Received: by 2002:aa7:88d4:0:b0:70d:2693:d215 with SMTP id
 d2e1a72fcca58-71936a5e771mr19135122b3a.16.1726515090493; 
 Mon, 16 Sep 2024 12:31:30 -0700 (PDT)
Received: from [10.0.0.174] ([24.225.235.209])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71944b9ad0esm4206529b3a.175.2024.09.16.12.31.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2024 12:31:30 -0700 (PDT)
Message-ID: <70006d17-01df-4253-b4d0-1c442dbea71f@redhat.com>
Date: Mon, 16 Sep 2024 15:31:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: prakash bisht <ps13.bisht@gmail.com>,
 tipc-discussion@lists.sourceforge.net, Xin Long <lxin@redhat.com>,
 tung quang nguyen <tung.q.nguyen@dektech.com.au>
References: <CACB1WsQAHZfeFHgy-u+ZO46P8BwVMu-j_GHm2Rp9MDNSvkWvhQ@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <CACB1WsQAHZfeFHgy-u+ZO46P8BwVMu-j_GHm2Rp9MDNSvkWvhQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2024-09-16 07:58, prakash bisht wrote: > Hi Hi Tung,Xin,John,
    > > We are using tipc multicast sockets for publisher/subscriber type of
   > application. > Below are the socket details > socket type  [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sqHRo-0002AG-Jr
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

CgpPbiAyMDI0LTA5LTE2IDA3OjU4LCBwcmFrYXNoIGJpc2h0IHdyb3RlOgo+IEhpIEhpIFR1bmcs
WGluLEpvaG4sCj4KPiBXZSBhcmUgdXNpbmcgdGlwYyBtdWx0aWNhc3Qgc29ja2V0cyBmb3IgcHVi
bGlzaGVyL3N1YnNjcmliZXIgdHlwZSBvZiAKPiBhcHBsaWNhdGlvbi4KPiBCZWxvdyBhcmUgdGhl
IHNvY2tldCBkZXRhaWxzCj4gc29ja2V0IHR5cGXCoCDCoCDCoDrCoCBTT0NLX1JETQo+IHRpcGMg
YWRkciB0eXBlwqAgOsKgIFRJUENfTUNBU1QKPgo+IFdlIHdvdWxkIGxpa2UgdG8ga25vdyBpZiB0
aGUgc3VjY2Vzc2Z1bCBiaW5kKCkgY2FsbCBvbiB0aGUgc3Vic2NyaWJlciAKPiBzb2NrZXQgZ3Vh
cmFudGVlcyB0aGF0IHRoZSBzdWJzY3JpYmVyIGlzIHJlYWR5IGFuZCBubyBwdWJsaWNhdGlvbiAK
PiB3b3VsZCBiZSBtaXNzZWQgPyBPciBzaGFsbCB3ZSB3YWl0IGZvciBzb21lIHRpbWUgYmVmb3Jl
IGFzc3VtaW5nIHRoZSAKPiBzdWJzY3JpYmVyIHNvY2tldCBpcyByZWFkeSA/ClRoZXJlIG1heSBi
ZSAodmVyeSkgYSBzbWFsbCBsYWcgYmV0d2VlbiB0aGUgcmV0dXJuIG9mIHRoZSBiaW5kKCkgY2Fs
bCAKdW50aWwgdGhlIGJpbmQgaXMgcmVnaXN0ZXJlZCBvbiBhbGwgdGhlIG90aGVyIG5vZGVzLgpU
aGUgcHJvcGVyIHdheSB0byBnZXQgYXJvdW5kIHRoaXMgaXMgdG8gbGV0IHlvdXIgInB1Ymxpc2hl
cnMiIHVzZSB0aGUgClRJUEMgc3Vic2NyaXB0aW9uIG1lY2hhbmlzbSB0byBrZWVwIHRyYWNrIG9m
IHlvdXIKInN1YnNjcmliZXIiLCBpLmUuLCB0aGV5IGRvbsK0dCBzdGFydCBwdWJsaXNoaW5nIHVu
dGlsIHRoZXkgaGF2ZSByZWNlaXZlZCAKYSBub3RpZmljYXRpb24gdGhhdCB0aGUgc3Vic2NyaWJl
ciBpcyBib3VuZAp0byB0aGUgc2VydmljZSBhZGRyZXNzL3JhbmdlLgovLy9qb24KPgo+Cj4gVGhh
bmtzIGFuZCBSZWdhcmRzLAo+IFByYWthc2gKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
