Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742593AF2D
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Jul 2024 11:43:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sWYWh-0006NE-PY;
	Wed, 24 Jul 2024 09:43:15 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1sWYWf-0006N7-Mf
 for tipc-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 09:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mdmeW4zCcTHX6YiWrHmZNkmnPeyVZGt/nIDVLiqzXdo=; b=eWB02Y0e/tsxA5jYy6qPBQ7oRA
 214h2rV1wjv/AdzNyYhRIW4RQHA7MWLylHwfuK9VY7xxkLKSPdJImSOV5TFfXP9oDpY5TB9elTkTO
 HtM6Kzl9xh5FyUsC97gmLlBQSrA/vYtkEZ9lD+zrEFyVXkeNlzUFsM+xLgI4nMmv72cQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mdmeW4zCcTHX6YiWrHmZNkmnPeyVZGt/nIDVLiqzXdo=; b=i84yywSIT411QCTrwBcldpX4Hr
 gbvam0J874a+CFj87LsdMYVoQm6Z9F93RE2ldWcM23Sq4I7uQpP/YMsy9KBPbwvulStjj3CCAhXo9
 Tktmsvb7dJWyX3LvWgV6BwP0uvXuum9IxOoz4k3jRElCuomoPfXubr+/aPmt8bAPSTKo=;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sWYWe-0003Y3-AS for tipc-discussion@lists.sourceforge.net;
 Wed, 24 Jul 2024 09:43:13 +0000
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-3daf0e73a62so2250837b6e.0
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Jul 2024 02:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721814181; x=1722418981; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mdmeW4zCcTHX6YiWrHmZNkmnPeyVZGt/nIDVLiqzXdo=;
 b=QKhG9yDO/TOqIuzCASyVKLNx1eFzNIayHSYSNFCD/RepR4wc/pMpqAlPMmINk9NE8O
 bhO88O2XN76Ojm8JIdBUw/YqVqfbLW8Se31qDSKTwqxUrXJe1i/z0l6zQ8e8jcEQQLmB
 LfUBFYTSS/kQD9va4E8VxRKlxDkuabok4RyaA/gZKYluYnuMr1IcxXJcXoRtOlnRW1DY
 t2mbuaTnxOi8YVm4l1nC5M/W5TAV4v2EjSoxq8pvNmF2dREqtbYnr40Ao1+vqSyjgFwf
 EK+gfP2tpGCk1n0OPNzLPNQ16AomOuZzHb9/YLy1OimtkixHeHJj3IZ2wIycGQAVj7uV
 NSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721814181; x=1722418981;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mdmeW4zCcTHX6YiWrHmZNkmnPeyVZGt/nIDVLiqzXdo=;
 b=RA3RvAYNTATYMY2/Pq1rDeg11AjjbsJdBnHOSGYD4pMu70b8hKBTJcXG0wq/uXl1MF
 pOV3XpX+LYIzwd0zjMCSOKf7bLTURyxw7SS+Gjf4w3J1/Qmp/KRlZzj3ZNCntTz3d51v
 kpg9T1sOD9wVa67brF+PBU6ZCEaF4Z9ujK894e5+Fq0xq2GlM2apufmbi+Vx3vfP3CVX
 dBXsqAsbQZW4Cmmqv1j116QDffCYvOXyFMqny8eAC3Z1f+YNHqmply/eIFgW8tq1j3ew
 tJianqcbKbFSehWPhF4HNn7Xr5IZNk4G+HGuGSbJy6qwtMu/Fp05QolATVovdooeMGIr
 OU1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzqdGw9v5qDBaEjv9zklwoOFiupKdtLoNmfNvH0/vTddZhGxB6EIaQPoE8Ow57fcOClM2FpjcmvRmjCZwTic9qzeAWLUEAJBGmijuQr47SbXQNF7Iz
X-Gm-Message-State: AOJu0YzLVU5MLvLesSCezwiWNe9b6nmGWSG4Tbk6tr2BLPo+UMTzSyv0
 q0SuZw9za8B/Q5feuPm+9S9sUmhQPCQ8TJEm4c15vJEvOolArje2fLjnit4MjHvPh/mzE5esqid
 H2kQ7MgSWeDa6nmKQR+0qFZMUsPgxNw==
X-Google-Smtp-Source: AGHT+IHnaRyKxruinKfka2T07qySRCqOg0JnhNztO733Np/x9+MvkFMNyeADZmQGp6vBm/+Gr276s+QfhDIF/SS/UZQ=
X-Received: by 2002:a05:6808:bc3:b0:3da:a5fa:9905 with SMTP id
 5614622812f47-3db08f6bdf4mr1577405b6e.41.1721814181480; Wed, 24 Jul 2024
 02:43:01 -0700 (PDT)
MIME-Version: 1.0
References: <CACB1WsS1ZVUb8Lv3BY171oS8qAbhoL1m7B812FT1D9MVQr6DUg@mail.gmail.com>
 <AS4PR05MB9647F933C42CFC96D838484B88DA2@AS4PR05MB9647.eurprd05.prod.outlook.com>
 <CACB1WsQL77nRrDQi2z0vwhuGh=FLA1effO+jP7poKnS6m5DeoQ@mail.gmail.com>
 <CACB1WsT8bpXPekmMyn7nuGjR_tCiSacqYa6oYk6RgO+SEipEvA@mail.gmail.com>
In-Reply-To: <CACB1WsT8bpXPekmMyn7nuGjR_tCiSacqYa6oYk6RgO+SEipEvA@mail.gmail.com>
From: prakash bisht <ps13.bisht@gmail.com>
Date: Wed, 24 Jul 2024 15:12:50 +0530
Message-ID: <CACB1WsQD4oLozuSU=rA2AadohDu=VhO-Xg+E8vvZC4zUwG+YVA@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, 
 Xin Long <lxin@redhat.com>, jmaloy@redhat.com
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Tung,Xin,John, Any thoughts about the previous issue ?
   We are seeing this quite often in our system now. Any help would be appreciated.
    Thanks and Regards, Prakash On Wed, Jul 17, 2024 at 5:57 PM prakash bisht
    wrote: 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [209.85.167.181 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.167.181 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ps13.bisht[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.181 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [209.85.167.181 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1sWYWe-0003Y3-AS
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Reg: TIPC Error - "Unable to remove
 publication from failed node"
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

SGkgVHVuZyxYaW4sSm9obiwKQW55IHRob3VnaHRzIGFib3V0IHRoZSBwcmV2aW91cyBpc3N1ZSA/
IFdlIGFyZSBzZWVpbmcgdGhpcyBxdWl0ZSBvZnRlbiBpbgpvdXIgc3lzdGVtIG5vdy4gQW55IGhl
bHAgd291bGQgYmUgYXBwcmVjaWF0ZWQuCgpUaGFua3MgYW5kIFJlZ2FyZHMsClByYWthc2gKCk9u
IFdlZCwgSnVsIDE3LCAyMDI0IGF0IDU6NTfigK9QTSBwcmFrYXNoIGJpc2h0IDxwczEzLmJpc2h0
QGdtYWlsLmNvbT4gd3JvdGU6Cgo+IFRoYW5rcyBUdW5nIGZvciB5b3VyIHJlc3BvbnNlLiBJIHZl
cmlmaWVkIHRoZSBrZXJuZWwgbG9ncyBpbiBvdXIgc2V0dXAuCj4+IFRoZXJlIGlzIG5vIG1lbW9y
eSBlcnJvciBhcyBpbiB5b3VyIGNhc2UuCj4+Cj4+IEkgc2VlIHRoZSBiZWxvdyBwYXR0ZXJuIHRo
b3VnaC4KPj4gMS4gVGhlcmUgYXJlIG11bHRpcGxlIGxvY2FsIHB1YmxpY2F0aW9uIHJlbGF0ZWQg
bWVzc2FnZXMuIEJ1dCBUSVBDIGlzIG5vdAo+PiBlbnRlcmluZyB0aGUgaW5maW5pdGUgbG9vcCBp
bW1lZGlhdGVseS4KPj4gICAgICAgSnVsIDE2IDEzOjIzOjMxIGluLWRlYmJsZDM5LXBkIGtlcm5l
bDogWzkwNTI3LjY4MTIxMV0gRmFpbGVkIHRvCj4+IHJlbW92ZSBsb2NhbCBwdWJsaWNhdGlvbiB7
MiwxMzU5MjM3MTM5LDEzNTkyMzcxMzl9LzAKPj4gMi4gVGhlcmUgYXJlIHNvbWUgZXJyb3JzIG9m
IGlsbGVnYWwgRlNNIGV2ZW4gYWZ0ZXIgd2hpY2ggdGhlIGluZmluaXRlCj4+IGxvb3AgaXMgdHJp
Z2dlcmVkLgo+PiAgICAgSnVsIDE2IDEzOjIzOjUzIGluLWRlYmJsZDM5LXBkIGtlcm5lbDogWzkw
NTUwLjM5Njk1NF0gSWxsZWdhbCBGU00KPj4gZXZlbnQgZmExMTBlZGUgaW4gc3RhdGUgZDAwMDAg
b24gbGluawo+PiAxMzUwMDQ1MTpJTlRFUkNDX0JFQVJFUi0xMzUwMDRhMTpJTlRFUkNDX0JFQVJF
Ugo+PiAgTm90IHN1cmUgaWYgdGhlIGFib3ZlIGVycm9yIGhhcyBzb21lIHJlbGF0aW9uIHdpdGgg
aGl0dGluZyAiVW5hYmxlIHRvCj4+IHJlbW92ZSBwdWJsaWNhdGlvbiBmcm9tIGZhaWxlZCBub2Rl
IiBpbmZpbml0ZSBsb29wIGlzc3VlLgo+Pgo+Pgo+PiBGcm9tIGtlcm5lbC5sb2cgZmlsZSAtCj4+
Cj4+IC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKi8KPj4gSnVsIDE2IDEzOjIzOjMxIGluLWRlYmJsZDM5LXBkIGtlcm5lbDogWzkwNTI3
LjY4MTIxMV0gRmFpbGVkIHRvIHJlbW92ZQo+PiBsb2NhbCBwdWJsaWNhdGlvbiB7MiwxMzU5MjM3
MTM5LDEzNTkyMzcxMzl9LzAKPj4gSnVsIDE2IDEzOjIzOjM3IGluLWRlYmJsZDM5LXBkIGtlcm5l
bDogWzkwNTMzLjkxMTYzMl0gW1VGVyBCTE9DS10gSU49ZW5vMQo+PiBPVVQ9IE1BQz01YzpiOTow
MTpmZTpmNjpkMDo0MDphODpmMDozYjpjZTo0MDowODowMCBTUkM9MTAuMjIwLjgyLjI1Cj4+IERT
VD0xMC4yMjAuODIuMzkgTEVOPTYwIFRPUz0weDAwIFBSRUM9MHgwMCBUVEw9NjQgSUQ9NDU4MzEg
REYgUFJPVE89VENQCj4+IFNQVD00NjkwNSBEUFQ9MTExIFdJTkRPVz02NDI0MCBSRVM9MHgwMCBT
WU4gVVJHUD0wCj4+IEp1bCAxNiAxMzoyMzozNyBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDUz
My45MTM5ODhdIFtVRlcgQkxPQ0tdIElOPWVubzEKPj4gT1VUPSBNQUM9NWM6Yjk6MDE6ZmU6ZjY6
ZDA6ZDQ6ZjU6ZWY6NzA6Yzk6MTA6MDg6MDAgU1JDPTEwLjIyMC44Mi4xMTAKPj4gRFNUPTEwLjIy
MC44Mi4zOSBMRU49NjAgVE9TPTB4MDAgUFJFQz0weDAwIFRUTD02NCBJRD02NDg1MiBERiBQUk9U
Tz1UQ1AKPj4gU1BUPTQ4ODkxIERQVD0xMTEgV0lORE9XPTY0MjQwIFJFUz0weDAwIFNZTiBVUkdQ
PTAKPj4gSnVsIDE2IDEzOjIzOjM3IGluLWRlYmJsZDM5LXBkIGtlcm5lbDogWzkwNTMzLjkxNTE2
M10gW1VGVyBCTE9DS10gSU49ZW5vMQo+PiBPVVQ9IE1BQz01YzpiOTowMTpmZTpmNjpkMDplYzpi
MTpkNzo4Mzo4Mzo5MDowODowMCBTUkM9MTAuMjIwLjgyLjI4Cj4+IERTVD0xMC4yMjAuODIuMzkg
TEVOPTYwIFRPUz0weDAwIFBSRUM9MHgwMCBUVEw9NjQgSUQ9Mjc4MzUgREYgUFJPVE89VENQCj4+
IFNQVD02MDQxNSBEUFQ9MTExIFdJTkRPVz02NDI0MCBSRVM9MHgwMCBTWU4gVVJHUD0wCj4+IEp1
bCAxNiAxMzoyMzo0MSBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDUzNy45MTMwMTddIEZhaWxl
ZCB0byByZW1vdmUKPj4gbG9jYWwgcHVibGljYXRpb24gezIsMTM1OTIzNzEzOSwxMzU5MjM3MTM5
fS8wCj4+IEp1bCAxNiAxMzoyMzo0MiBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDUzOS4yOTk2
NzNdIEFDUEkgRXJyb3I6Cj4+IFNNQnVzL0lQTUkvR2VuZXJpY1NlcmlhbEJ1cyB3cml0ZSByZXF1
aXJlcyBCdWZmZXIgb2YgbGVuZ3RoIDY2LCBmb3VuZAo+PiBsZW5ndGggMzIgKDIwMTgwODEwL2V4
ZmllbGQtMzkzKQo+PiBKdWwgMTYgMTM6MjM6NDIgaW4tZGViYmxkMzktcGQga2VybmVsOiBbOTA1
MzkuMjk5Njg0XSBBQ1BJIEVycm9yOiBNZXRob2QKPj4gcGFyc2UvZXhlY3V0aW9uIGZhaWxlZCBc
X1NCLlBNSTAuX1BNTSwgQUVfQU1MX0JVRkZFUl9MSU1JVAo+PiAoMjAxODA4MTAvcHNwYXJzZS01
MTYpCj4+IEp1bCAxNiAxMzoyMzo0MiBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDUzOS4yOTk2
OTVdIEFDUEkgRXJyb3I6Cj4+IEFFX0FNTF9CVUZGRVJfTElNSVQsIEV2YWx1YXRpbmcgX1BNTSAo
MjAxODA4MTAvcG93ZXJfbWV0ZXItMzM5KQo+PiBKdWwgMTYgMTM6MjM6NDggaW4tZGViYmxkMzkt
cGQga2VybmVsOiBbOTA1NDQuODI1MDA0XSBGYWlsZWQgdG8gcmVtb3ZlCj4+IGxvY2FsIHB1Ymxp
Y2F0aW9uIHsyLDEzNTkyMzcxMzksMTM1OTIzNzEzOX0vMAo+PiBKdWwgMTYgMTM6MjM6NTEgaW4t
ZGViYmxkMzktcGQga2VybmVsOiBbOTA1NDcuOTkzMTc2XSBGYWlsZWQgdG8gcmVtb3ZlCj4+IGxv
Y2FsIHB1YmxpY2F0aW9uIHsyLDEzNTkyMzcxMzksMTM1OTIzNzEzOX0vMAo+PiBKdWwgMTYgMTM6
MjM6NTMgaW4tZGViYmxkMzktcGQga2VybmVsOiBbOTA1NDkuODE2OTczXSBGYWlsZWQgdG8gcmVt
b3ZlCj4+IGxvY2FsIHB1YmxpY2F0aW9uIHsyLDEzNTkyMzcxMzksMTM1OTIzNzEzOX0vMAo+PiBK
dWwgMTYgMTM6MjM6NTMgaW4tZGViYmxkMzktcGQga2VybmVsOiBbOTA1NTAuMzk2OTU0XSBJbGxl
Z2FsIEZTTSBldmVudAo+PiBmYTExMGVkZSBpbiBzdGF0ZSBkMDAwMCBvbiBsaW5rCj4+IDEzNTAw
NDUxOklOVEVSQ0NfQkVBUkVSLTEzNTAwNGExOklOVEVSQ0NfQkVBUkVSCj4+IEp1bCAxNiAxMzoy
Mzo1MyBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDU1MC4zOTY5NzFdIFVuYWJsZSB0byByZW1v
dmUKPj4gcHVibGljYXRpb24gZnJvbSBmYWlsZWQgbm9kZQo+PiBKdWwgMTYgMTM6MjM6NTMgaW4t
ZGViYmxkMzktcGQga2VybmVsOiBbOTA1NTAuMzk2OTcxXSAgKHR5cGU9MCwKPj4gbG93ZXI9Mjcw
MTQxNDQxOSwgbm9kZT0weGExMDQ1MDEzLCBwb3J0PTAsIGtleT0yNzAxNDE0NDE5KQo+PiBKdWwg
MTYgMTM6MjM6NTMgaW4tZGViYmxkMzktcGQga2VybmVsOiBbOTA1NTAuMzk2OTc2XSBVbmFibGUg
dG8gcmVtb3ZlCj4+IHB1YmxpY2F0aW9uIGZyb20gZmFpbGVkIG5vZGUKPj4gSnVsIDE2IDEzOjIz
OjUzIGluLWRlYmJsZDM5LXBkIGtlcm5lbDogWzkwNTUwLjM5Njk3Nl0gICh0eXBlPTE5Mzk4NjY2
LAo+PiBsb3dlcj0xLCBub2RlPTB4YTEwNDUwMTMsIHBvcnQ9MzI2ODA0NDg4NCwga2V5PTMyNjgw
NDQ4ODUpCj4+IEp1bCAxNiAxMzoyMzo1MyBpbi1kZWJibGQzOS1wZCBrZXJuZWw6IFs5MDU1MC4z
OTY5NzhdIFVuYWJsZSB0byByZW1vdmUKPj4gcHVibGljYXRpb24gZnJvbSBmYWlsZWQgbm9kZQo+
Pgo+PiAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKiovCj4+Cj4+IFRoYW5rcywKPj4gUHJha2FzaAo+Pgo+PiBPbiBNb24sIEp1bCA4LCAy
MDI0IGF0IDM6MzLigK9QTSBUdW5nIFF1YW5nIE5ndXllbiA8Cj4+IHR1bmcucS5uZ3V5ZW5AZGVr
dGVjaC5jb20uYXU+IHdyb3RlOgo+Pgo+Pj4gPipKdW4gMjkgMTQ6NDU6MzYgaW4tZGViYmxkLTMz
IGtlcm5lbDogWzE3MjQzOTkuMTk2OTQ1XSBVbmFibGUgdG8gcmVtb3ZlCj4+PiBwdWJsaWNhdGlv
biBmcm9tIGZhaWxlZCBub2RlIEp1biAyOSAxNDo0NTozNiBpbi1kZWJibGQtMzMKPj4+ID5rZXJu
ZWw6Cj4+PiA+WzE3MjQzOTkuMTk2OTQ1XSAgKHR5cGU9MjAxODUxMDYsIGxvd2VyPTEsIG5vZGU9
MHhkMTA0NTAxMywKPj4+IHBvcnQ9MjE3NzM4NTUwNSwga2V5PTIxNzczODU1MDYpIEp1biAyOSAx
NDo0NTozNiBpbi1kZWJibGQtMzMKPj4+ID5rZXJuZWw6Cj4+PiA+WzE3MjQzOTkuMTk2OTQ4XSBV
bmFibGUgdG8gcmVtb3ZlIHB1YmxpY2F0aW9uIGZyb20gZmFpbGVkIG5vZGUgSnVuIDI5Cj4+PiA+
MTQ6NDU6MzYgaW4tZGViYmxkLTMzIGtlcm5lbDogWzE3MjQzOTkuMTk2OTQ4XSAgKHR5cGU9MjAx
ODUxMDYsCj4+PiBsb3dlcj0xLCBub2RlPTB4ZDEwNDUwMTMsIHBvcnQ9MjE3NzM4NTUwNSwga2V5
PTIxNzczODU1MDYpCj4+PiA+SnVuIDI5IDE0OjQ1OjM2Cj4+PiA+aW4tZGViYmxkLTMzIGtlcm5l
bDogWzE3MjQzOTkuMTk2OTU0XSBVbmFibGUgdG8gcmVtb3ZlIHB1YmxpY2F0aW9uIGZyb20KPj4+
IGZhaWxlZCBub2RlIEp1biAyOSAxNDo0NTozNiBpbi1kZWJibGQtMzMga2VybmVsOgo+Pj4gPlsx
NzI0Mzk5LjE5Njk1NF0gKHR5cGU9MjAxODUxMDYsIGxvd2VyPTEsIG5vZGU9MHhkMTA0NTAxMywK
Pj4+IHBvcnQ9MjE3NzM4NTUwNSwga2V5PTIxNzczODU1MDYpKgo+Pj4gPgo+Pj4KPj4+ID4jIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKPj4+ID4j
IyMjIyMKPj4+ID4KPj4+ID4KPj4+ID4KPj4+ID5BbnkgaWRlYSB3aHkgdGhpcyB3b3VsZCBiZSBo
YXBwZW5pbmcgPwo+Pj4gTWVtb3J5IGVycm9yIGNvdWxkIGNhdXNlIHRoaXMuIEkgb2JzZXJ2ZWQg
dGhlIHNhbWUgdGhpbmcgaW4gbXkgc3lzdGVtOgo+Pj4gIgo+Pj4gMjAyNC0wNS0yN1QwNzoyNzoy
Mi43NDcrMDI6MDAga2VybmVsOls0MjUyMTkuNDkyMDQ3XSB7Li4ufVtIYXJkd2FyZQo+Pj4gRXJy
b3JdOiBIYXJkd2FyZSBlcnJvciBmcm9tIEFQRUkgR2VuZXJpYyBIYXJkd2FyZSBFcnJvciBTb3Vy
Y2U6IDAKPj4+IC4uLgo+Pj4gMjAyNC0wNS0yN1QwNzoyNzoyMi43NDcrMDI6MDAga2VybmVsOls0
MjUyMTkuNTE3NjIyXSB7Li4ufVtIYXJkd2FyZQo+Pj4gRXJyb3JdOiAgIHNlY3Rpb25fdHlwZTog
bWVtb3J5IGVycm9yCj4+PiAuLi4KPj4+IDIwMjQtMDUtMjdUMDc6Mjc6MjIuOTczKzAyOjAwIGtl
cm5lbDpbNDI1MjIxLjcwNDEwN10gdGlwYzogVW5hYmxlIHRvCj4+PiByZW1vdmUgcHVibGljYXRp
b24gZnJvbSBmYWlsZWQgbm9kZQo+Pj4gMjAyNC0wNS0yN1QwNzoyNzoyMi45NzMrMDI6MDAga2Vy
bmVsOls0MjUyMjEuNzA0MTA3XSAgKHR5cGU9MTQzMzIyLAo+Pj4gbG93ZXI9OSwgbm9kZT0weDEw
MDEwMDksIHBvcnQ9MTI5NTk1NDcyMiwga2V5PTEyOTU5NTQ3MjMpCj4+PiAyMDI0LTA1LTI3VDA3
OjI3OjIyLjk3MyswMjowMCBrZXJuZWw6WzQyNTIyMS43MTc5MTJdIHRpcGM6IFVuYWJsZSB0bwo+
Pj4gcmVtb3ZlIHB1YmxpY2F0aW9uIGZyb20gZmFpbGVkIG5vZGUKPj4+IDIwMjQtMDUtMjdUMDc6
Mjc6MjIuOTczKzAyOjAwIGtlcm5lbDpbNDI1MjIxLjcxNzkxMl0gICh0eXBlPTE0MzMyMiwKPj4+
IGxvd2VyPTksIG5vZGU9MHgxMDAxMDA5LCBwb3J0PTEyOTU5NTQ3MjIsIGtleT0xMjk1OTU0NzIz
KQo+Pj4gIgo+Pj4KPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby90aXBjLWRpc2N1c3Npb24K
